<?php

namespace Siam\Docs\DocTag;


use EasySwoole\Annotation\AbstractAnnotationTag;

/**
 * Class ApiFail
 * @package EasySwoole\HttpAnnotation\AnnotationTag\DocTag
 * @Annotation
 */
class ApiFail extends AbstractAnnotationTag
{
    protected $content;

    public function tagName(): string
    {
        return 'ApiFail';
    }

    public function assetValue(?string $raw)
    {
        $this->content = $raw;
    }

    function getContent()
    {
        return $this->content;
    }
}