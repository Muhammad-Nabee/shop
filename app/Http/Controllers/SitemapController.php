<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Spatie\Sitemap\SitemapGenerator;
use Spatie\Sitemap\Tags\Url;

class SitemapController extends Controller
{
    public function generateSitemap() {

        SitemapGenerator::create('https://onlinepharmacyshop.co.uk/')
            ->getSitemap()
            ->writeToFile(public_path('sitemap.xml'));
        return redirect('/sitemap.xml');

    }
}
