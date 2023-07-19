<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Product;

class ProductFilter extends Component
{
    public $products;
    public $name;
    public $price;
    public $category;
    public $from;
    public $to;

    public function mount()
    {
        $this->products = Product::all();
    }

    public function updated()
    {
        $product = Product::query();

        if(!empty($this->name))
        {
            $product = $product->where('name','like','%'.$this->name.'%');
        }

        if(!empty($this->price))
        {
            $product = $product->where('price','>=',$this->price);
        }

        if(!empty($this->category))
        {
            $product = $product->where('category','like','%'.$this->category.'%');
        }

        if(!empty($this->from) && !empty($this->to))
        {
            $product = $product->whereBetween('created_at',[$this->from.'00:00:00', $this->to.'23:59:59']);
        }
        else if(!empty($this->from))
        {
            $product = $product->whereDate('created_at','>=',$this->from);
        }
        else if(!empty($this->to))
        {
            $product = $product->whereDate('created_at','<=',$this->to);
        }

        $this->products = $product->get();
    }

    public function render()
    {
        return view('livewire.product-filter')->layout('layouts.app');
    }
}
