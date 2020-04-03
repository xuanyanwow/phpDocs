<?php
namespace Siam\Docs\DocTag;

use  Siam\Docs\Param;

/**
 * Class ResponseParam
 * @package EasySwoole\HttpAnnotation\AnnotationTag\DocTag
 * @Annotation
 */
class ResponseParam extends Param
{
    public function tagName(): string
    {
        return 'ResponseParam';
    }

}