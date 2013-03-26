<?php

class DeclinationAttributeController extends AppController {

	public function admin_index() {
		$this->set('declinations', $this->DeclinationAttribute->find('all'));
	}

	public function admin_view() {
		$this->set('declination', $this->DeclinationAttribute->find('first', array(
			'conditions' => array('Declination.id' => 1)
		)));
	}
}