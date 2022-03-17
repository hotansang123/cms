<?php

namespace App\Controller\Admin;


use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use App\Entity\Admin;
use Symfony\Component\HttpFoundation\Request;

class AuthController extends AbstractController {

    /**
     * @Route("/admin/login", name="admin_auth_login")
     * @Method({"GET"})
     */
    public function showFormLogin() {
        return $this->render('admin/login.html.twig');
    }

    /**
     * @Route("/admin/post-login")
     * @Method({"POST"})
     */
    public function postLogin(Request $request) {
        $admins = $this->getDoctrine()->getRepository(Admin::class)->findAll();
        foreach ($admins as $admin) {
            if ($admin->getEmail() == $request->request->get('email') && $admin->getPassword() == md5($request->request->get('password'))) {
                return $this->redirectToRoute('admin_category_list');
            }
        }
        return $this->redirectToRoute('admin_auth_login');
    }

    /**
     * @Route("/admin/logout")
     * @Method({"GET"})
     */
    public function logout() {
        return $this->redirectToRoute('admin_auth_login');
    }
}