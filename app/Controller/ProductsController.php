<?php

class ProductsController extends AppController {
	//public $helpers = array('Html', 'Form');

	public function index() {
		$this->set('products', $this->Product->find('all'));
	}

	public function view() {
		$this->set('product', $this->Product->find('first', array(
			'conditions' => array('Product.id' => 1)
		)));
	}

	public function admin_index() {
		$this->set('products', $this->Product->find('all'));
	}

	public function admin_view() {
		$this->set('product', $this->Product->find('first', array(
			'conditions' => array('Product.id' => 1)
		)));
	}
}