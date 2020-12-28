<?php
    class Pages extends Controller
    {
        public function __construct()
        {
        }

        public function index()
        {
            $data = [
                'title' => 'Camagru',
                'description' => 'Simple social network'
            ];
            $this->view('pages/index', $data);
            
        }
    }