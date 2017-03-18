package org.cjt;

/**
 * Created by 185378641@qq.com on 08/02/2017.
 *
 * @author jiangtao
 */
@Service
public class MyService {
    @Autowired
    private MyBizMapper mapper;

    /**
     * 获取所有的数据，前面得有PageHelper兜着
     * @param userId
     * @return
     */
    public List<MyBiz> getByUserId(Integer userId) {
        MyBizExample example = new MyBizExample();
        example.createCriteria().andUserIdEqualTo(userId);
        return mapper.selectByExample(example);
    }
}
