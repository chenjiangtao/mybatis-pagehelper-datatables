package org.cjt;

/**
 * Created by 185378641@qq.com on 15/03/2017.
 *
 * @author jiangtao
 */
@Controller
public class MyCtrl {

    // slf4j logger
    private final static Logger logger = LoggerFactory.getLogger(MyCtrl.class);

    @Autowired
    private MyService service;
    @Autowired
    private UserService userService;


    @PostMapping(value = "/mydatatables")
    @ResponseBody
    @ResponseStatus(HttpStatus.OK)
    public Object getPage(HttpServletRequest request) {
        logger.debug("----->>>>>[getPage]:");
        String name = request.getUserPrincipal().getName();
        BizUser user = userService.getUserByName(name);

        //使用DataTables的属性接收分页数据
        DataTablePageUtil<MyBiz> dataTable = new DataTablePageUtil<MyBiz>(request);
        //开始分页：PageHelper会处理接下来的第一个查询
        PageHelper.startPage(dataTable.getPage_num(), dataTable.getPage_size());
        //还是使用List，方便后期用到
        List<MyBiz> list = service.getByUserId(user.getId());
        //用PageInfo对结果进行包装
        PageInfo<MyBiz> pageInfo = new PageInfo<MyBiz>(list);

        //封装数据给DataTables
        dataTable.setDraw(dataTable.getDraw());
        dataTable.setData(pageInfo.getList());
        dataTable.setRecordsTotal((int) pageInfo.getTotal());
        dataTable.setRecordsFiltered(dataTable.getRecordsTotal());

        //返回数据到页面
        String jsonString = JSON.toJSONString(dataTable);

        return jsonString;

    }

}
