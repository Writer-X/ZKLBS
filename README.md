# ZKLBS项目
### 项目介绍
为了解决个人位置信息泄露可能带来的问题，依据零知识位置证明（zkPoL）协议，实现了ZKLBS零知识证明项目。ZKLBS项目的使用场景有景区、商家评价、特定地区消费券领取等。
项目共分为四个等级：
- 等级1：这可以用来证明某人出现在商家指定的范围内，适用于诸如景点评价授权的情况。在这种情况下，游客必须证明他曾经去过某个旅游区，才能获得评论许可。
- 等级2：用户公开自己的位置坐标。这可以用来证明某人出现在特定的位置，并且可以应用于场景，例如定点打卡领取优惠券服务，用户需要在特定位置打卡从而得到优惠券。
- 等级3：用户公开自己的位置坐标以及获取该坐标的时间。这可以用来证明某人在特定的时刻出现在一个特定的地点，可以应用于基于位置的实时推荐，用户必须证明他现在处在一个特定的位置，以获得精确的推荐。
- 等级4：用户公开自己的位置坐标、获取该坐标的时间以及身份标识。这可以用来证明一个特定的人在特定的时刻出现在特定的地点。例如，嫌疑人需要不在场证明来证明他在特定的时间不在犯罪现场。

### 创新与特色
- ZKLBS项目基于零知识证明实现LBS位置服务，创新性的将零知识证明应用于位置服务中。能够在不泄露位置关联隐私数据的前提下，实现基于精准位置的LBS服务，解决了传统位置证明服务容易泄露用户隐私的问题。
- ZKLBS项目实现了四个等级下的基于零知识证明的LBS服务。依据不同等级的需求，用户需要公开不同的数据，进而生成不同的零知识证明完成验证。
- ZKLBS等级一使用比较电路构造范围证明，拓展了零知识证明的使用范围，为提供非等值证明提供了新的思路。
- ZKLBS项目使用三方架构模拟零知识证明过程，包含用户、服务方、验证方，证书序列号、证书生成时间、用户数据摘要都由可信方生成，保证数据无法造假，提升了安全性。
