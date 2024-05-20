import 'dart:typed_data';

import 'package:expression_cli/src/core/core.dart';
import 'package:expression_cli/src/core/field_types/core_bool_type.dart';
import 'package:expression_cli/src/core/field_types/core_bytes_type.dart';
import 'package:expression_cli/src/core/field_types/core_callback_type.dart';
import 'package:expression_cli/src/core/field_types/core_color_type.dart';
import 'package:expression_cli/src/core/field_types/core_double_type.dart';
import 'package:expression_cli/src/core/field_types/core_field_type.dart';
import 'package:expression_cli/src/core/field_types/core_string_type.dart';
import 'package:expression_cli/src/core/field_types/core_uint_type.dart';
import 'package:expression_cli/src/rive/animation.dart';
import 'package:expression_cli/src/rive/component.dart';
import 'package:expression_cli/src/rive/property_keys/property_keys.dart';
import 'package:expression_cli/src/rive/text_value_run.dart';

class RiveCoreContext {
  static CoreFieldType<String> stringType = CoreStringType();
  static CoreFieldType<int> uintType = CoreUintType();
  static CoreFieldType<double> doubleType = CoreDoubleType();
  static CoreFieldType<bool> boolType = CoreBoolType();
  static CoreFieldType<int> callbackType = CoreCallbackType();
  static CoreFieldType<int> colorType = CoreColorType();
  static CoreFieldType<Uint8List> bytesType = CoreBytesType();

  /// Determines `CoreFieldType` based on [PropertyKeys].
  static CoreFieldType? coreType(int propertyType) {
    switch (propertyType) {
      case PropertyKeys.componentBaseNamePropertyKey:
      case PropertyKeys.animationBaseNamePropertyKey:
      case PropertyKeys.stateMachineComponentBaseNamePropertyKey:
      case PropertyKeys.keyFrameStringBaseValuePropertyKey:
      case PropertyKeys.openUrlEventBaseUrlPropertyKey:
      case PropertyKeys.textValueRunBaseTextPropertyKey:
      case PropertyKeys.customPropertyStringBasePropertyValuePropertyKey:
      case PropertyKeys.assetBaseNamePropertyKey:
      case PropertyKeys.fileAssetBaseCdnBaseUrlPropertyKey:
        return stringType;
      case PropertyKeys.componentBaseParentIdPropertyKey:
      case PropertyKeys.drawTargetBaseDrawableIdPropertyKey:
      case PropertyKeys.drawTargetBasePlacementValuePropertyKey:
      case PropertyKeys.targetedConstraintBaseTargetIdPropertyKey:
      case PropertyKeys.distanceConstraintBaseModeValuePropertyKey:
      case PropertyKeys.transformSpaceConstraintBaseSourceSpaceValuePropertyKey:
      case PropertyKeys.transformSpaceConstraintBaseDestSpaceValuePropertyKey:
      case PropertyKeys
            .transformComponentConstraintBaseMinMaxSpaceValuePropertyKey:
      case PropertyKeys.iKConstraintBaseParentBoneCountPropertyKey:
      case PropertyKeys.drawableBaseBlendModeValuePropertyKey:
      case PropertyKeys.drawableBaseDrawableFlagsPropertyKey:
      case PropertyKeys.nestedArtboardBaseArtboardIdPropertyKey:
      case PropertyKeys.nestedArtboardBaseFitPropertyKey:
      case PropertyKeys.nestedArtboardBaseAlignmentPropertyKey:
      case PropertyKeys.nestedAnimationBaseAnimationIdPropertyKey:
      case PropertyKeys.soloBaseActiveComponentIdPropertyKey:
      case PropertyKeys.layoutComponentStyleBaseLayoutFlags0PropertyKey:
      case PropertyKeys.layoutComponentStyleBaseLayoutFlags1PropertyKey:
      case PropertyKeys.layoutComponentStyleBaseLayoutFlags2PropertyKey:
      case PropertyKeys.listenerFireEventBaseEventIdPropertyKey:
      case PropertyKeys.layerStateBaseFlagsPropertyKey:
      case PropertyKeys.linearAnimationBaseFpsPropertyKey:
      case PropertyKeys.linearAnimationBaseDurationPropertyKey:
      case PropertyKeys.linearAnimationBaseLoopValuePropertyKey:
      case PropertyKeys.linearAnimationBaseWorkStartPropertyKey:
      case PropertyKeys.linearAnimationBaseWorkEndPropertyKey:
      case PropertyKeys.listenerInputChangeBaseInputIdPropertyKey:
      case PropertyKeys.listenerInputChangeBaseNestedInputIdPropertyKey:
      case PropertyKeys.animationStateBaseAnimationIdPropertyKey:
      case PropertyKeys.nestedInputBaseInputIdPropertyKey:
      case PropertyKeys.keyedObjectBaseObjectIdPropertyKey:
      case PropertyKeys.blendAnimationBaseAnimationIdPropertyKey:
      case PropertyKeys.blendAnimationDirectBaseInputIdPropertyKey:
      case PropertyKeys.blendAnimationDirectBaseBlendSourcePropertyKey:
      case PropertyKeys.transitionConditionBaseInputIdPropertyKey:
      case PropertyKeys.keyedPropertyBasePropertyKeyPropertyKey:
      case PropertyKeys.stateMachineListenerBaseTargetIdPropertyKey:
      case PropertyKeys.stateMachineListenerBaseListenerTypeValuePropertyKey:
      case PropertyKeys.stateMachineListenerBaseEventIdPropertyKey:
      case PropertyKeys.keyFrameBaseFramePropertyKey:
      case PropertyKeys.interpolatingKeyFrameBaseInterpolationTypePropertyKey:
      case PropertyKeys.interpolatingKeyFrameBaseInterpolatorIdPropertyKey:
      case PropertyKeys.keyFrameIdBaseValuePropertyKey:
      case PropertyKeys.listenerBoolChangeBaseValuePropertyKey:
      case PropertyKeys.listenerAlignTargetBaseTargetIdPropertyKey:
      case PropertyKeys.transitionValueConditionBaseOpValuePropertyKey:
      case PropertyKeys.stateTransitionBaseStateToIdPropertyKey:
      case PropertyKeys.stateTransitionBaseFlagsPropertyKey:
      case PropertyKeys.stateTransitionBaseDurationPropertyKey:
      case PropertyKeys.stateTransitionBaseExitTimePropertyKey:
      case PropertyKeys.stateTransitionBaseInterpolationTypePropertyKey:
      case PropertyKeys.stateTransitionBaseInterpolatorIdPropertyKey:
      case PropertyKeys.stateTransitionBaseRandomWeightPropertyKey:
      case PropertyKeys.stateMachineFireEventBaseEventIdPropertyKey:
      case PropertyKeys.stateMachineFireEventBaseOccursValuePropertyKey:
      case PropertyKeys.elasticInterpolatorBaseEasingValuePropertyKey:
      case PropertyKeys.blendState1DBaseInputIdPropertyKey:
      case PropertyKeys.blendStateTransitionBaseExitBlendAnimationIdPropertyKey:
      case PropertyKeys.strokeBaseCapPropertyKey:
      case PropertyKeys.strokeBaseJoinPropertyKey:
      case PropertyKeys.trimPathBaseModeValuePropertyKey:
      case PropertyKeys.fillBaseFillRulePropertyKey:
      case PropertyKeys.pathBasePathFlagsPropertyKey:
      case PropertyKeys.weightBaseValuesPropertyKey:
      case PropertyKeys.weightBaseIndicesPropertyKey:
      case PropertyKeys.cubicWeightBaseInValuesPropertyKey:
      case PropertyKeys.cubicWeightBaseInIndicesPropertyKey:
      case PropertyKeys.cubicWeightBaseOutValuesPropertyKey:
      case PropertyKeys.cubicWeightBaseOutIndicesPropertyKey:
      case PropertyKeys.clippingShapeBaseSourceIdPropertyKey:
      case PropertyKeys.clippingShapeBaseFillRulePropertyKey:
      case PropertyKeys.polygonBasePointsPropertyKey:
      case PropertyKeys.imageBaseAssetIdPropertyKey:
      case PropertyKeys.drawRulesBaseDrawTargetIdPropertyKey:
      case PropertyKeys.layoutComponentBaseStyleIdPropertyKey:
      case PropertyKeys.artboardBaseDefaultStateMachineIdPropertyKey:
      case PropertyKeys.joystickBaseXIdPropertyKey:
      case PropertyKeys.joystickBaseYIdPropertyKey:
      case PropertyKeys.joystickBaseJoystickFlagsPropertyKey:
      case PropertyKeys.joystickBaseHandleSourceIdPropertyKey:
      case PropertyKeys.openUrlEventBaseTargetValuePropertyKey:
      case PropertyKeys.tendonBaseBoneIdPropertyKey:
      case PropertyKeys.textModifierRangeBaseUnitsValuePropertyKey:
      case PropertyKeys.textModifierRangeBaseTypeValuePropertyKey:
      case PropertyKeys.textModifierRangeBaseModeValuePropertyKey:
      case PropertyKeys.textModifierRangeBaseRunIdPropertyKey:
      case PropertyKeys.textStyleFeatureBaseTagPropertyKey:
      case PropertyKeys.textStyleFeatureBaseFeatureValuePropertyKey:
      case PropertyKeys.textVariationModifierBaseAxisTagPropertyKey:
      case PropertyKeys.textModifierGroupBaseModifierFlagsPropertyKey:
      case PropertyKeys.textStyleBaseFontAssetIdPropertyKey:
      case PropertyKeys.textStyleAxisBaseTagPropertyKey:
      case PropertyKeys.textBaseAlignValuePropertyKey:
      case PropertyKeys.textBaseSizingValuePropertyKey:
      case PropertyKeys.textBaseOverflowValuePropertyKey:
      case PropertyKeys.textBaseOriginValuePropertyKey:
      case PropertyKeys.textValueRunBaseStyleIdPropertyKey:
      case PropertyKeys.fileAssetBaseAssetIdPropertyKey:
      case PropertyKeys.audioEventBaseAssetIdPropertyKey:
        return uintType;
      case PropertyKeys.customPropertyNumberBasePropertyValuePropertyKey:
      case PropertyKeys.constraintBaseStrengthPropertyKey:
      case PropertyKeys.distanceConstraintBaseDistancePropertyKey:
      case PropertyKeys.transformComponentConstraintBaseCopyFactorPropertyKey:
      case PropertyKeys.transformComponentConstraintBaseMinValuePropertyKey:
      case PropertyKeys.transformComponentConstraintBaseMaxValuePropertyKey:
      case PropertyKeys.transformComponentConstraintYBaseCopyFactorYPropertyKey:
      case PropertyKeys.transformComponentConstraintYBaseMinValueYPropertyKey:
      case PropertyKeys.transformComponentConstraintYBaseMaxValueYPropertyKey:
      case PropertyKeys.followPathConstraintBaseDistancePropertyKey:
      case PropertyKeys.transformConstraintBaseOriginXPropertyKey:
      case PropertyKeys.transformConstraintBaseOriginYPropertyKey:
      case PropertyKeys.worldTransformComponentBaseOpacityPropertyKey:
      case PropertyKeys.transformComponentBaseRotationPropertyKey:
      case PropertyKeys.transformComponentBaseScaleXPropertyKey:
      case PropertyKeys.transformComponentBaseScaleYPropertyKey:
      case PropertyKeys.nodeBaseXPropertyKey:
      case PropertyKeys.nodeBaseYPropertyKey:
      case PropertyKeys.layoutComponentStyleBaseGapHorizontalPropertyKey:
      case PropertyKeys.layoutComponentStyleBaseGapVerticalPropertyKey:
      case PropertyKeys.layoutComponentStyleBaseMaxWidthPropertyKey:
      case PropertyKeys.layoutComponentStyleBaseMaxHeightPropertyKey:
      case PropertyKeys.layoutComponentStyleBaseMinWidthPropertyKey:
      case PropertyKeys.layoutComponentStyleBaseMinHeightPropertyKey:
      case PropertyKeys.layoutComponentStyleBaseBorderLeftPropertyKey:
      case PropertyKeys.layoutComponentStyleBaseBorderRightPropertyKey:
      case PropertyKeys.layoutComponentStyleBaseBorderTopPropertyKey:
      case PropertyKeys.layoutComponentStyleBaseBorderBottomPropertyKey:
      case PropertyKeys.layoutComponentStyleBaseMarginLeftPropertyKey:
      case PropertyKeys.layoutComponentStyleBaseMarginRightPropertyKey:
      case PropertyKeys.layoutComponentStyleBaseMarginTopPropertyKey:
      case PropertyKeys.layoutComponentStyleBaseMarginBottomPropertyKey:
      case PropertyKeys.layoutComponentStyleBasePaddingLeftPropertyKey:
      case PropertyKeys.layoutComponentStyleBasePaddingRightPropertyKey:
      case PropertyKeys.layoutComponentStyleBasePaddingTopPropertyKey:
      case PropertyKeys.layoutComponentStyleBasePaddingBottomPropertyKey:
      case PropertyKeys.layoutComponentStyleBasePositionLeftPropertyKey:
      case PropertyKeys.layoutComponentStyleBasePositionRightPropertyKey:
      case PropertyKeys.layoutComponentStyleBasePositionTopPropertyKey:
      case PropertyKeys.layoutComponentStyleBasePositionBottomPropertyKey:
      case PropertyKeys.layoutComponentStyleBaseFlexPropertyKey:
      case PropertyKeys.layoutComponentStyleBaseFlexGrowPropertyKey:
      case PropertyKeys.layoutComponentStyleBaseFlexShrinkPropertyKey:
      case PropertyKeys.layoutComponentStyleBaseFlexBasisPropertyKey:
      case PropertyKeys.layoutComponentStyleBaseAspectRatioPropertyKey:
      case PropertyKeys.linearAnimationBaseSpeedPropertyKey:
      case PropertyKeys.nestedLinearAnimationBaseMixPropertyKey:
      case PropertyKeys.nestedSimpleAnimationBaseSpeedPropertyKey:
      case PropertyKeys.advanceableStateBaseSpeedPropertyKey:
      case PropertyKeys.blendAnimationDirectBaseMixValuePropertyKey:
      case PropertyKeys.stateMachineNumberBaseValuePropertyKey:
      case PropertyKeys.cubicInterpolatorBaseX1PropertyKey:
      case PropertyKeys.cubicInterpolatorBaseY1PropertyKey:
      case PropertyKeys.cubicInterpolatorBaseX2PropertyKey:
      case PropertyKeys.cubicInterpolatorBaseY2PropertyKey:
      case PropertyKeys.transitionNumberConditionBaseValuePropertyKey:
      case PropertyKeys.cubicInterpolatorComponentBaseX1PropertyKey:
      case PropertyKeys.cubicInterpolatorComponentBaseY1PropertyKey:
      case PropertyKeys.cubicInterpolatorComponentBaseX2PropertyKey:
      case PropertyKeys.cubicInterpolatorComponentBaseY2PropertyKey:
      case PropertyKeys.listenerNumberChangeBaseValuePropertyKey:
      case PropertyKeys.keyFrameDoubleBaseValuePropertyKey:
      case PropertyKeys.elasticInterpolatorBaseAmplitudePropertyKey:
      case PropertyKeys.elasticInterpolatorBasePeriodPropertyKey:
      case PropertyKeys.nestedNumberBaseNestedValuePropertyKey:
      case PropertyKeys.blendAnimation1DBaseValuePropertyKey:
      case PropertyKeys.nestedRemapAnimationBaseTimePropertyKey:
      case PropertyKeys.linearGradientBaseStartXPropertyKey:
      case PropertyKeys.linearGradientBaseStartYPropertyKey:
      case PropertyKeys.linearGradientBaseEndXPropertyKey:
      case PropertyKeys.linearGradientBaseEndYPropertyKey:
      case PropertyKeys.linearGradientBaseOpacityPropertyKey:
      case PropertyKeys.strokeBaseThicknessPropertyKey:
      case PropertyKeys.gradientStopBasePositionPropertyKey:
      case PropertyKeys.trimPathBaseStartPropertyKey:
      case PropertyKeys.trimPathBaseEndPropertyKey:
      case PropertyKeys.trimPathBaseOffsetPropertyKey:
      case PropertyKeys.vertexBaseXPropertyKey:
      case PropertyKeys.vertexBaseYPropertyKey:
      case PropertyKeys.meshVertexBaseUPropertyKey:
      case PropertyKeys.meshVertexBaseVPropertyKey:
      case PropertyKeys.straightVertexBaseRadiusPropertyKey:
      case PropertyKeys.cubicAsymmetricVertexBaseRotationPropertyKey:
      case PropertyKeys.cubicAsymmetricVertexBaseInDistancePropertyKey:
      case PropertyKeys.cubicAsymmetricVertexBaseOutDistancePropertyKey:
      case PropertyKeys.parametricPathBaseWidthPropertyKey:
      case PropertyKeys.parametricPathBaseHeightPropertyKey:
      case PropertyKeys.parametricPathBaseOriginXPropertyKey:
      case PropertyKeys.parametricPathBaseOriginYPropertyKey:
      case PropertyKeys.rectangleBaseCornerRadiusTLPropertyKey:
      case PropertyKeys.rectangleBaseCornerRadiusTRPropertyKey:
      case PropertyKeys.rectangleBaseCornerRadiusBLPropertyKey:
      case PropertyKeys.rectangleBaseCornerRadiusBRPropertyKey:
      case PropertyKeys.cubicMirroredVertexBaseRotationPropertyKey:
      case PropertyKeys.cubicMirroredVertexBaseDistancePropertyKey:
      case PropertyKeys.polygonBaseCornerRadiusPropertyKey:
      case PropertyKeys.starBaseInnerRadiusPropertyKey:
      case PropertyKeys.imageBaseOriginXPropertyKey:
      case PropertyKeys.imageBaseOriginYPropertyKey:
      case PropertyKeys.cubicDetachedVertexBaseInRotationPropertyKey:
      case PropertyKeys.cubicDetachedVertexBaseInDistancePropertyKey:
      case PropertyKeys.cubicDetachedVertexBaseOutRotationPropertyKey:
      case PropertyKeys.cubicDetachedVertexBaseOutDistancePropertyKey:
      case PropertyKeys.layoutComponentBaseWidthPropertyKey:
      case PropertyKeys.layoutComponentBaseHeightPropertyKey:
      case PropertyKeys.artboardBaseXPropertyKey:
      case PropertyKeys.artboardBaseYPropertyKey:
      case PropertyKeys.artboardBaseOriginXPropertyKey:
      case PropertyKeys.artboardBaseOriginYPropertyKey:
      case PropertyKeys.joystickBaseXPropertyKey:
      case PropertyKeys.joystickBaseYPropertyKey:
      case PropertyKeys.joystickBasePosXPropertyKey:
      case PropertyKeys.joystickBasePosYPropertyKey:
      case PropertyKeys.joystickBaseOriginXPropertyKey:
      case PropertyKeys.joystickBaseOriginYPropertyKey:
      case PropertyKeys.joystickBaseWidthPropertyKey:
      case PropertyKeys.joystickBaseHeightPropertyKey:
      case PropertyKeys.boneBaseLengthPropertyKey:
      case PropertyKeys.rootBoneBaseXPropertyKey:
      case PropertyKeys.rootBoneBaseYPropertyKey:
      case PropertyKeys.skinBaseXxPropertyKey:
      case PropertyKeys.skinBaseYxPropertyKey:
      case PropertyKeys.skinBaseXyPropertyKey:
      case PropertyKeys.skinBaseYyPropertyKey:
      case PropertyKeys.skinBaseTxPropertyKey:
      case PropertyKeys.skinBaseTyPropertyKey:
      case PropertyKeys.tendonBaseXxPropertyKey:
      case PropertyKeys.tendonBaseYxPropertyKey:
      case PropertyKeys.tendonBaseXyPropertyKey:
      case PropertyKeys.tendonBaseYyPropertyKey:
      case PropertyKeys.tendonBaseTxPropertyKey:
      case PropertyKeys.tendonBaseTyPropertyKey:
      case PropertyKeys.textModifierRangeBaseModifyFromPropertyKey:
      case PropertyKeys.textModifierRangeBaseModifyToPropertyKey:
      case PropertyKeys.textModifierRangeBaseStrengthPropertyKey:
      case PropertyKeys.textModifierRangeBaseFalloffFromPropertyKey:
      case PropertyKeys.textModifierRangeBaseFalloffToPropertyKey:
      case PropertyKeys.textModifierRangeBaseOffsetPropertyKey:
      case PropertyKeys.textVariationModifierBaseAxisValuePropertyKey:
      case PropertyKeys.textModifierGroupBaseOriginXPropertyKey:
      case PropertyKeys.textModifierGroupBaseOriginYPropertyKey:
      case PropertyKeys.textModifierGroupBaseOpacityPropertyKey:
      case PropertyKeys.textModifierGroupBaseXPropertyKey:
      case PropertyKeys.textModifierGroupBaseYPropertyKey:
      case PropertyKeys.textModifierGroupBaseRotationPropertyKey:
      case PropertyKeys.textModifierGroupBaseScaleXPropertyKey:
      case PropertyKeys.textModifierGroupBaseScaleYPropertyKey:
      case PropertyKeys.textStyleBaseFontSizePropertyKey:
      case PropertyKeys.textStyleBaseLineHeightPropertyKey:
      case PropertyKeys.textStyleBaseLetterSpacingPropertyKey:
      case PropertyKeys.textStyleAxisBaseAxisValuePropertyKey:
      case PropertyKeys.textBaseWidthPropertyKey:
      case PropertyKeys.textBaseHeightPropertyKey:
      case PropertyKeys.textBaseOriginXPropertyKey:
      case PropertyKeys.textBaseOriginYPropertyKey:
      case PropertyKeys.textBaseParagraphSpacingPropertyKey:
      case PropertyKeys.exportAudioBaseVolumePropertyKey:
      case PropertyKeys.drawableAssetBaseHeightPropertyKey:
      case PropertyKeys.drawableAssetBaseWidthPropertyKey:
        return doubleType;
      case PropertyKeys.transformComponentConstraintBaseOffsetPropertyKey:
      case PropertyKeys.transformComponentConstraintBaseDoesCopyPropertyKey:
      case PropertyKeys.transformComponentConstraintBaseMinPropertyKey:
      case PropertyKeys.transformComponentConstraintBaseMaxPropertyKey:
      case PropertyKeys.transformComponentConstraintYBaseDoesCopyYPropertyKey:
      case PropertyKeys.transformComponentConstraintYBaseMinYPropertyKey:
      case PropertyKeys.transformComponentConstraintYBaseMaxYPropertyKey:
      case PropertyKeys.iKConstraintBaseInvertDirectionPropertyKey:
      case PropertyKeys.followPathConstraintBaseOrientPropertyKey:
      case PropertyKeys.followPathConstraintBaseOffsetPropertyKey:
      case PropertyKeys.linearAnimationBaseEnableWorkAreaPropertyKey:
      case PropertyKeys.linearAnimationBaseQuantizePropertyKey:
      case PropertyKeys.nestedSimpleAnimationBaseIsPlayingPropertyKey:
      case PropertyKeys.keyFrameBoolBaseValuePropertyKey:
      case PropertyKeys.listenerAlignTargetBasePreserveOffsetPropertyKey:
      case PropertyKeys.nestedBoolBaseNestedValuePropertyKey:
      case PropertyKeys.stateMachineBoolBaseValuePropertyKey:
      case PropertyKeys.shapePaintBaseIsVisiblePropertyKey:
      case PropertyKeys.strokeBaseTransformAffectsStrokePropertyKey:
      case PropertyKeys.pointsPathBaseIsClosedPropertyKey:
      case PropertyKeys.rectangleBaseLinkCornerRadiusPropertyKey:
      case PropertyKeys.clippingShapeBaseIsVisiblePropertyKey:
      case PropertyKeys.customPropertyBooleanBasePropertyValuePropertyKey:
      case PropertyKeys.layoutComponentBaseClipPropertyKey:
      case PropertyKeys.textModifierRangeBaseClampPropertyKey:
        return boolType;
      case PropertyKeys.nestedTriggerBaseFirePropertyKey:
      case PropertyKeys.eventBaseTriggerPropertyKey:
        return callbackType;
      case PropertyKeys.keyFrameColorBaseValuePropertyKey:
      case PropertyKeys.solidColorBaseColorValuePropertyKey:
      case PropertyKeys.gradientStopBaseColorValuePropertyKey:
        return colorType;
      case PropertyKeys.meshBaseTriangleIndexBytesPropertyKey:
      case PropertyKeys.fileAssetBaseCdnUuidPropertyKey:
      case PropertyKeys.fileAssetContentsBaseBytesPropertyKey:
        return bytesType;
      default:
        return null;
    }
  }

  static void setObjectProperty(Core object, int propertyKey, Object value) {
    switch (propertyKey) {
      case PropertyKeys.componentBaseNamePropertyKey:
        if (object is Component && value is String) {
          object.name = value;
        }
        break;
      case PropertyKeys.textValueRunBaseTextPropertyKey:
        if (object is TextValueRun && value is String) {
          object.text = value;
        }
        break;
      case PropertyKeys.animationBaseNamePropertyKey:
        if (object is Animation && value is String) {
          object.name = value;
        }
        break;
    }
  }
}
