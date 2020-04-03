<?php
namespace Siam\Tests;

class App
{
    /**
     * @Api(name="register",group="auth",path="/api/user/register",description="用户注册接口")
     * @Method(allow={GET,POST})
     * @Param(name="account",required="")
     * @Param(name="password",required="")
     * @Param(name="rePassword",equalWithColumn="password")
     * @ApiRequestExample(curl http://127.0.0.1:9501/api/user/auth/register.html?account=test2&password=123456&&rePassword=123456)
     * @ApiFail({"code":400,"result":null,"msg":"注册失败"})
     */
    public function test(){

    }
}
