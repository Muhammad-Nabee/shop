<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use phpDocumentor\Reflection\Types\Self_;

class MedicineMedia extends Model
{
    /**
     * @var string
     */
    protected $table = 'kod_medicine_medias';


    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'hash_id', 'medicine_id', 'media', 'display_order', 'status',
        'created_by_ip', 'modified_by_ip', 'media_no'
    ];

    /**
     * @Description Add medicine.
     */

    public static function store($request, $medicine){
        $all_medias = self::select('id', 'hash_id', 'media_no')->where('medicine_id', $medicine->id)->get()->toArray();
//        dd($key = array_search('m_4', array_column($all_medias, 'media_no')));
        $media = [
            'medicine_id'          => $medicine->id,
            'created_by_ip'         => $request->ip(),
            'modified_by_ip'         => $request->ip(),
        ];
        if (count($all_medias) == 0) {
            if ($request->file('media_1')) {
                $media['hash_id']  = generateHashId();
                $media['media_no'] = 'm_1';
                $media['display_order'] = $request->display_order_1;
                $create = self::create($media);
                $create->update(['media' => imageSaveDirectory("media_1", $request->file('media_1'), 'medicine', $create->id)]);
            }
            if ($request->file('media_2')) {
                $media['hash_id']  = generateHashId();
                $media['media_no'] = 'm_2';
                $media['display_order'] = $request->display_order_2;
                $create = self::create($media);
                $create->update(['media' => imageSaveDirectory("media_2", $request->file('media_2'), 'medicine', $create->id)]);
            }
            if ($request->file('media_3')) {
                $media['hash_id']  = generateHashId();
                $media['media_no'] = 'm_3';
                $media['display_order'] = $request->display_order_3;
                $create = self::create($media);
                $create->update(['media' => imageSaveDirectory("media_3", $request->file('media_3'), 'medicine', $create->id)]);
            }
        } else {
            if ($request->file('media_1')) {
                $key = array_search('m_1', array_column($all_medias, 'media_no'));
                if ($key !== false) {
                    // update
                    $media_single = self::where('hash_id', $all_medias[$key]['hash_id'])->first();
                    $media['display_order'] = $request->display_order_1;
                    removeImageDirectory('medicine',$media_single->media);
                    $media['media'] = imageSaveDirectory("media_1", $request->file('media_1'), 'medicine', $media_single->id);
                    $update = $media_single->update($media);
                } else {
                    $media['hash_id']  = generateHashId();
                    $media['media_no'] = 'm_1';
                    $media['display_order'] = $request->display_order_1;
                    $create = self::create($media);
                    $create->update(['media' => imageSaveDirectory("media_1", $request->file('media_1'), 'medicine', $create->id)]);
                }
            } elseif (!$request->file('media_1') && $request->display_order_1) {
                $key = array_search('m_1', array_column($all_medias, 'media_no'));
                if ($key !== false) {
                    $media_single = self::where('hash_id', $all_medias[$key]['hash_id'])->first();
                    $media['display_order'] = $request->display_order_1;
                    $update = $media_single->update($media);
                }
            }
            if ($request->file('media_2')) {
                $key = array_search('m_2', array_column($all_medias, 'media_no'));
                if ($key !== false) {
                    // update
                    $media_single = self::where('hash_id', $all_medias[$key]['hash_id'])->first();
                    $media['display_order'] = $request->display_order_2;
                    removeImageDirectory('medicine',$media_single->media);
                    $media['media'] = imageSaveDirectory("media_2", $request->file('media_2'), 'medicine', $media_single->id);
                    $update = $media_single->update($media);
                } else {
                    $media['hash_id']  = generateHashId();
                    $media['media_no'] = 'm_2';
                    $media['display_order'] = $request->display_order_2;
                    $create = self::create($media);
                    $create->update(['media' => imageSaveDirectory("media_2", $request->file('media_2'), 'medicine', $create->id)]);
                }
            } elseif (!$request->file('media_2') && $request->display_order_2) {
                $key = array_search('m_2', array_column($all_medias, 'media_no'));
                if ($key !== false) {
                    $media_single = self::where('hash_id', $all_medias[$key]['hash_id'])->first();
                    $media['display_order'] = $request->display_order_2;
                    $update = $media_single->update($media);
                }
            }
            if ($request->file('media_3')) {
                $key = array_search('m_3', array_column($all_medias, 'media_no'));
                if ($key !== false) {
                    // update
                    $media_single = self::where('hash_id', $all_medias[$key]['hash_id'])->first();
                    $media['display_order'] = $request->display_order_3;
                    removeImageDirectory('medicine',$media_single->media);
                    $media['media'] = imageSaveDirectory("media_3", $request->file('media_3'), 'medicine', $media_single->id);
                    $update = $media_single->update($media);
                } else {
                    $media['hash_id']  = generateHashId();
                    $media['media_no'] = 'm_3';
                    $media['display_order'] = $request->display_order_3;
                    $create = self::create($media);
                    $create->update(['media' => imageSaveDirectory("media_3", $request->file('media_3'), 'medicine', $create->id)]);
                }
            } elseif (!$request->file('media_3') && $request->display_order_3) {
                $key = array_search('m_3', array_column($all_medias, 'media_no'));
                if ($key !== false) {
                    $media_single = self::where('hash_id', $all_medias[$key]['hash_id'])->first();
                    $media['display_order'] = $request->display_order_3;
                    $update = $media_single->update($media);
                }
            }
        }
        return $medicine;
    }

    public function medicine()
    {
        return $this->belongsTo(Medicine::class);
    }

}
