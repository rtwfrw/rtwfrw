
    # 获取好友数据
    print(u'正在获取微信好友数据信息，请耐心等待……')
    friends = bot.friends(update=False)
    # i.nick_name, i.remark_name, i.sex, i.province, i.city, i.signature
    print(u'微信好友数据信息获取完毕\n')


    print(u'正在分析你的群聊，请耐心等待……')
    group_common_in()
    print(u'分析群聊完毕\n')


    print(u'正在获取微信好友头像信息，请耐心等待……')
    # 创建一个队列，用于多线程下载头像，提高下载速度
    queue_head_image = Queue()

    # 将每个好友元素存入队列中
    # 如果为了方便调试，可以仅仅插入几个数据，friends[1:10]
    for user in friends:
        queue_head_image.put(user)
