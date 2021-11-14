{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudAsset.Types.Product
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudAsset.Types.Product where

import Network.Google.CloudAsset.Types.Sum
import Network.Google.Prelude

-- | \`BasicLevel\` is an \`AccessLevel\` using a set of recommended
-- features.
--
-- /See:/ 'googleIdentityAccesscontextManagerV1BasicLevel' smart constructor.
data GoogleIdentityAccesscontextManagerV1BasicLevel =
  GoogleIdentityAccesscontextManagerV1BasicLevel'
    { _giamvblConditions :: !(Maybe [GoogleIdentityAccesscontextManagerV1Condition])
    , _giamvblCombiningFunction :: !(Maybe GoogleIdentityAccesscontextManagerV1BasicLevelCombiningFunction)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleIdentityAccesscontextManagerV1BasicLevel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giamvblConditions'
--
-- * 'giamvblCombiningFunction'
googleIdentityAccesscontextManagerV1BasicLevel
    :: GoogleIdentityAccesscontextManagerV1BasicLevel
googleIdentityAccesscontextManagerV1BasicLevel =
  GoogleIdentityAccesscontextManagerV1BasicLevel'
    {_giamvblConditions = Nothing, _giamvblCombiningFunction = Nothing}


-- | Required. A list of requirements for the \`AccessLevel\` to be granted.
giamvblConditions :: Lens' GoogleIdentityAccesscontextManagerV1BasicLevel [GoogleIdentityAccesscontextManagerV1Condition]
giamvblConditions
  = lens _giamvblConditions
      (\ s a -> s{_giamvblConditions = a})
      . _Default
      . _Coerce

-- | How the \`conditions\` list should be combined to determine if a request
-- is granted this \`AccessLevel\`. If AND is used, each \`Condition\` in
-- \`conditions\` must be satisfied for the \`AccessLevel\` to be applied.
-- If OR is used, at least one \`Condition\` in \`conditions\` must be
-- satisfied for the \`AccessLevel\` to be applied. Default behavior is
-- AND.
giamvblCombiningFunction :: Lens' GoogleIdentityAccesscontextManagerV1BasicLevel (Maybe GoogleIdentityAccesscontextManagerV1BasicLevelCombiningFunction)
giamvblCombiningFunction
  = lens _giamvblCombiningFunction
      (\ s a -> s{_giamvblCombiningFunction = a})

instance FromJSON
           GoogleIdentityAccesscontextManagerV1BasicLevel
         where
        parseJSON
          = withObject
              "GoogleIdentityAccesscontextManagerV1BasicLevel"
              (\ o ->
                 GoogleIdentityAccesscontextManagerV1BasicLevel' <$>
                   (o .:? "conditions" .!= mempty) <*>
                     (o .:? "combiningFunction"))

instance ToJSON
           GoogleIdentityAccesscontextManagerV1BasicLevel
         where
        toJSON
          GoogleIdentityAccesscontextManagerV1BasicLevel'{..}
          = object
              (catMaybes
                 [("conditions" .=) <$> _giamvblConditions,
                  ("combiningFunction" .=) <$>
                    _giamvblCombiningFunction])

-- | The \`Status\` type defines a logical error model that is suitable for
-- different programming environments, including REST APIs and RPC APIs. It
-- is used by [gRPC](https:\/\/github.com\/grpc). Each \`Status\` message
-- contains three pieces of data: error code, error message, and error
-- details. You can find out more about this error model and how to work
-- with it in the [API Design
-- Guide](https:\/\/cloud.google.com\/apis\/design\/errors).
--
-- /See:/ 'status' smart constructor.
data Status =
  Status'
    { _sDetails :: !(Maybe [StatusDetailsItem])
    , _sCode :: !(Maybe (Textual Int32))
    , _sMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Status' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sDetails'
--
-- * 'sCode'
--
-- * 'sMessage'
status
    :: Status
status = Status' {_sDetails = Nothing, _sCode = Nothing, _sMessage = Nothing}


-- | A list of messages that carry the error details. There is a common set
-- of message types for APIs to use.
sDetails :: Lens' Status [StatusDetailsItem]
sDetails
  = lens _sDetails (\ s a -> s{_sDetails = a}) .
      _Default
      . _Coerce

-- | The status code, which should be an enum value of google.rpc.Code.
sCode :: Lens' Status (Maybe Int32)
sCode
  = lens _sCode (\ s a -> s{_sCode = a}) .
      mapping _Coerce

-- | A developer-facing error message, which should be in English. Any
-- user-facing error message should be localized and sent in the
-- google.rpc.Status.details field, or localized by the client.
sMessage :: Lens' Status (Maybe Text)
sMessage = lens _sMessage (\ s a -> s{_sMessage = a})

instance FromJSON Status where
        parseJSON
          = withObject "Status"
              (\ o ->
                 Status' <$>
                   (o .:? "details" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON Status where
        toJSON Status'{..}
          = object
              (catMaybes
                 [("details" .=) <$> _sDetails,
                  ("code" .=) <$> _sCode,
                  ("message" .=) <$> _sMessage])

-- | Specifies the audit configuration for a service. The configuration
-- determines which permission types are logged, and what identities, if
-- any, are exempted from logging. An AuditConfig must have one or more
-- AuditLogConfigs. If there are AuditConfigs for both \`allServices\` and
-- a specific service, the union of the two AuditConfigs is used for that
-- service: the log_types specified in each AuditConfig are enabled, and
-- the exempted_members in each AuditLogConfig are exempted. Example Policy
-- with multiple AuditConfigs: { \"audit_configs\": [ { \"service\":
-- \"allServices\", \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\",
-- \"exempted_members\": [ \"user:jose\'example.com\" ] }, { \"log_type\":
-- \"DATA_WRITE\" }, { \"log_type\": \"ADMIN_READ\" } ] }, { \"service\":
-- \"sampleservice.googleapis.com\", \"audit_log_configs\": [ {
-- \"log_type\": \"DATA_READ\" }, { \"log_type\": \"DATA_WRITE\",
-- \"exempted_members\": [ \"user:aliya\'example.com\" ] } ] } ] } For
-- sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
-- logging. It also exempts jose\'example.com from DATA_READ logging, and
-- aliya\'example.com from DATA_WRITE logging.
--
-- /See:/ 'auditConfig' smart constructor.
data AuditConfig =
  AuditConfig'
    { _acService :: !(Maybe Text)
    , _acAuditLogConfigs :: !(Maybe [AuditLogConfig])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AuditConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acService'
--
-- * 'acAuditLogConfigs'
auditConfig
    :: AuditConfig
auditConfig = AuditConfig' {_acService = Nothing, _acAuditLogConfigs = Nothing}


-- | Specifies a service that will be enabled for audit logging. For example,
-- \`storage.googleapis.com\`, \`cloudsql.googleapis.com\`. \`allServices\`
-- is a special value that covers all services.
acService :: Lens' AuditConfig (Maybe Text)
acService
  = lens _acService (\ s a -> s{_acService = a})

-- | The configuration for logging of each type of permission.
acAuditLogConfigs :: Lens' AuditConfig [AuditLogConfig]
acAuditLogConfigs
  = lens _acAuditLogConfigs
      (\ s a -> s{_acAuditLogConfigs = a})
      . _Default
      . _Coerce

instance FromJSON AuditConfig where
        parseJSON
          = withObject "AuditConfig"
              (\ o ->
                 AuditConfig' <$>
                   (o .:? "service") <*>
                     (o .:? "auditLogConfigs" .!= mempty))

instance ToJSON AuditConfig where
        toJSON AuditConfig'{..}
          = object
              (catMaybes
                 [("service" .=) <$> _acService,
                  ("auditLogConfigs" .=) <$> _acAuditLogConfigs])

-- | A response message for AssetService.AnalyzeIamPolicyLongrunning.
--
-- /See:/ 'analyzeIAMPolicyLongrunningResponse' smart constructor.
data AnalyzeIAMPolicyLongrunningResponse =
  AnalyzeIAMPolicyLongrunningResponse'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AnalyzeIAMPolicyLongrunningResponse' with the minimum fields required to make a request.
--
analyzeIAMPolicyLongrunningResponse
    :: AnalyzeIAMPolicyLongrunningResponse
analyzeIAMPolicyLongrunningResponse = AnalyzeIAMPolicyLongrunningResponse'


instance FromJSON AnalyzeIAMPolicyLongrunningResponse
         where
        parseJSON
          = withObject "AnalyzeIAMPolicyLongrunningResponse"
              (\ o -> pure AnalyzeIAMPolicyLongrunningResponse')

instance ToJSON AnalyzeIAMPolicyLongrunningResponse
         where
        toJSON = const emptyObject

-- | The detailed related assets with the \`relationship_type\`.
--
-- /See:/ 'googleCloudAssetV1p7beta1RelatedAssets' smart constructor.
data GoogleCloudAssetV1p7beta1RelatedAssets =
  GoogleCloudAssetV1p7beta1RelatedAssets'
    { _gcavraRelationshipAttributes :: !(Maybe GoogleCloudAssetV1p7beta1RelationshipAttributes)
    , _gcavraAssets :: !(Maybe [GoogleCloudAssetV1p7beta1RelatedAsset])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudAssetV1p7beta1RelatedAssets' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcavraRelationshipAttributes'
--
-- * 'gcavraAssets'
googleCloudAssetV1p7beta1RelatedAssets
    :: GoogleCloudAssetV1p7beta1RelatedAssets
googleCloudAssetV1p7beta1RelatedAssets =
  GoogleCloudAssetV1p7beta1RelatedAssets'
    {_gcavraRelationshipAttributes = Nothing, _gcavraAssets = Nothing}


-- | The detailed relation attributes.
gcavraRelationshipAttributes :: Lens' GoogleCloudAssetV1p7beta1RelatedAssets (Maybe GoogleCloudAssetV1p7beta1RelationshipAttributes)
gcavraRelationshipAttributes
  = lens _gcavraRelationshipAttributes
      (\ s a -> s{_gcavraRelationshipAttributes = a})

-- | The peer resources of the relationship.
gcavraAssets :: Lens' GoogleCloudAssetV1p7beta1RelatedAssets [GoogleCloudAssetV1p7beta1RelatedAsset]
gcavraAssets
  = lens _gcavraAssets (\ s a -> s{_gcavraAssets = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudAssetV1p7beta1RelatedAssets
         where
        parseJSON
          = withObject "GoogleCloudAssetV1p7beta1RelatedAssets"
              (\ o ->
                 GoogleCloudAssetV1p7beta1RelatedAssets' <$>
                   (o .:? "relationshipAttributes") <*>
                     (o .:? "assets" .!= mempty))

instance ToJSON
           GoogleCloudAssetV1p7beta1RelatedAssets
         where
        toJSON GoogleCloudAssetV1p7beta1RelatedAssets'{..}
          = object
              (catMaybes
                 [("relationshipAttributes" .=) <$>
                    _gcavraRelationshipAttributes,
                  ("assets" .=) <$> _gcavraAssets])

-- | Policy for ingress into ServicePerimeter. IngressPolicies match requests
-- based on \`ingress_from\` and \`ingress_to\` stanzas. For an ingress
-- policy to match, both the \`ingress_from\` and \`ingress_to\` stanzas
-- must be matched. If an IngressPolicy matches a request, the request is
-- allowed through the perimeter boundary from outside the perimeter. For
-- example, access from the internet can be allowed either based on an
-- AccessLevel or, for traffic hosted on Google Cloud, the project of the
-- source network. For access from private networks, using the project of
-- the hosting network is required. Individual ingress policies can be
-- limited by restricting which services and\/or actions they match using
-- the \`ingress_to\` field.
--
-- /See:/ 'googleIdentityAccesscontextManagerV1IngressPolicy' smart constructor.
data GoogleIdentityAccesscontextManagerV1IngressPolicy =
  GoogleIdentityAccesscontextManagerV1IngressPolicy'
    { _giamvipIngressFrom :: !(Maybe GoogleIdentityAccesscontextManagerV1IngressFrom)
    , _giamvipIngressTo :: !(Maybe GoogleIdentityAccesscontextManagerV1IngressTo)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleIdentityAccesscontextManagerV1IngressPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giamvipIngressFrom'
--
-- * 'giamvipIngressTo'
googleIdentityAccesscontextManagerV1IngressPolicy
    :: GoogleIdentityAccesscontextManagerV1IngressPolicy
googleIdentityAccesscontextManagerV1IngressPolicy =
  GoogleIdentityAccesscontextManagerV1IngressPolicy'
    {_giamvipIngressFrom = Nothing, _giamvipIngressTo = Nothing}


-- | Defines the conditions on the source of a request causing this
-- IngressPolicy to apply.
giamvipIngressFrom :: Lens' GoogleIdentityAccesscontextManagerV1IngressPolicy (Maybe GoogleIdentityAccesscontextManagerV1IngressFrom)
giamvipIngressFrom
  = lens _giamvipIngressFrom
      (\ s a -> s{_giamvipIngressFrom = a})

-- | Defines the conditions on the ApiOperation and request destination that
-- cause this IngressPolicy to apply.
giamvipIngressTo :: Lens' GoogleIdentityAccesscontextManagerV1IngressPolicy (Maybe GoogleIdentityAccesscontextManagerV1IngressTo)
giamvipIngressTo
  = lens _giamvipIngressTo
      (\ s a -> s{_giamvipIngressTo = a})

instance FromJSON
           GoogleIdentityAccesscontextManagerV1IngressPolicy
         where
        parseJSON
          = withObject
              "GoogleIdentityAccesscontextManagerV1IngressPolicy"
              (\ o ->
                 GoogleIdentityAccesscontextManagerV1IngressPolicy'
                   <$> (o .:? "ingressFrom") <*> (o .:? "ingressTo"))

instance ToJSON
           GoogleIdentityAccesscontextManagerV1IngressPolicy
         where
        toJSON
          GoogleIdentityAccesscontextManagerV1IngressPolicy'{..}
          = object
              (catMaybes
                 [("ingressFrom" .=) <$> _giamvipIngressFrom,
                  ("ingressTo" .=) <$> _giamvipIngressTo])

-- | Represents a textual expression in the Common Expression Language (CEL)
-- syntax. CEL is a C-like expression language. The syntax and semantics of
-- CEL are documented at https:\/\/github.com\/google\/cel-spec. Example
-- (Comparison): title: \"Summary size limit\" description: \"Determines if
-- a summary is less than 100 chars\" expression: \"document.summary.size()
-- \< 100\" Example (Equality): title: \"Requestor is owner\" description:
-- \"Determines if requestor is the document owner\" expression:
-- \"document.owner == request.auth.claims.email\" Example (Logic): title:
-- \"Public documents\" description: \"Determine whether the document
-- should be publicly visible\" expression: \"document.type != \'private\'
-- && document.type != \'internal\'\" Example (Data Manipulation): title:
-- \"Notification string\" description: \"Create a notification string with
-- a timestamp.\" expression: \"\'New message received at \' +
-- string(document.create_time)\" The exact variables and functions that
-- may be referenced within an expression are determined by the service
-- that evaluates it. See the service documentation for additional
-- information.
--
-- /See:/ 'expr' smart constructor.
data Expr =
  Expr'
    { _eLocation :: !(Maybe Text)
    , _eExpression :: !(Maybe Text)
    , _eTitle :: !(Maybe Text)
    , _eDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Expr' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eLocation'
--
-- * 'eExpression'
--
-- * 'eTitle'
--
-- * 'eDescription'
expr
    :: Expr
expr =
  Expr'
    { _eLocation = Nothing
    , _eExpression = Nothing
    , _eTitle = Nothing
    , _eDescription = Nothing
    }


-- | Optional. String indicating the location of the expression for error
-- reporting, e.g. a file name and a position in the file.
eLocation :: Lens' Expr (Maybe Text)
eLocation
  = lens _eLocation (\ s a -> s{_eLocation = a})

-- | Textual representation of an expression in Common Expression Language
-- syntax.
eExpression :: Lens' Expr (Maybe Text)
eExpression
  = lens _eExpression (\ s a -> s{_eExpression = a})

-- | Optional. Title for the expression, i.e. a short string describing its
-- purpose. This can be used e.g. in UIs which allow to enter the
-- expression.
eTitle :: Lens' Expr (Maybe Text)
eTitle = lens _eTitle (\ s a -> s{_eTitle = a})

-- | Optional. Description of the expression. This is a longer text which
-- describes the expression, e.g. when hovered over it in a UI.
eDescription :: Lens' Expr (Maybe Text)
eDescription
  = lens _eDescription (\ s a -> s{_eDescription = a})

instance FromJSON Expr where
        parseJSON
          = withObject "Expr"
              (\ o ->
                 Expr' <$>
                   (o .:? "location") <*> (o .:? "expression") <*>
                     (o .:? "title")
                     <*> (o .:? "description"))

instance ToJSON Expr where
        toJSON Expr'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _eLocation,
                  ("expression" .=) <$> _eExpression,
                  ("title" .=) <$> _eTitle,
                  ("description" .=) <$> _eDescription])

-- | \`ServicePerimeterConfig\` specifies a set of Google Cloud resources
-- that describe specific Service Perimeter configuration.
--
-- /See:/ 'googleIdentityAccesscontextManagerV1ServicePerimeterConfig' smart constructor.
data GoogleIdentityAccesscontextManagerV1ServicePerimeterConfig =
  GoogleIdentityAccesscontextManagerV1ServicePerimeterConfig'
    { _giamvspcResources :: !(Maybe [Text])
    , _giamvspcVPCAccessibleServices :: !(Maybe GoogleIdentityAccesscontextManagerV1VPCAccessibleServices)
    , _giamvspcRestrictedServices :: !(Maybe [Text])
    , _giamvspcEgressPolicies :: !(Maybe [GoogleIdentityAccesscontextManagerV1EgressPolicy])
    , _giamvspcAccessLevels :: !(Maybe [Text])
    , _giamvspcIngressPolicies :: !(Maybe [GoogleIdentityAccesscontextManagerV1IngressPolicy])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleIdentityAccesscontextManagerV1ServicePerimeterConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giamvspcResources'
--
-- * 'giamvspcVPCAccessibleServices'
--
-- * 'giamvspcRestrictedServices'
--
-- * 'giamvspcEgressPolicies'
--
-- * 'giamvspcAccessLevels'
--
-- * 'giamvspcIngressPolicies'
googleIdentityAccesscontextManagerV1ServicePerimeterConfig
    :: GoogleIdentityAccesscontextManagerV1ServicePerimeterConfig
googleIdentityAccesscontextManagerV1ServicePerimeterConfig =
  GoogleIdentityAccesscontextManagerV1ServicePerimeterConfig'
    { _giamvspcResources = Nothing
    , _giamvspcVPCAccessibleServices = Nothing
    , _giamvspcRestrictedServices = Nothing
    , _giamvspcEgressPolicies = Nothing
    , _giamvspcAccessLevels = Nothing
    , _giamvspcIngressPolicies = Nothing
    }


-- | A list of Google Cloud resources that are inside of the service
-- perimeter. Currently only projects are allowed. Format:
-- \`projects\/{project_number}\`
giamvspcResources :: Lens' GoogleIdentityAccesscontextManagerV1ServicePerimeterConfig [Text]
giamvspcResources
  = lens _giamvspcResources
      (\ s a -> s{_giamvspcResources = a})
      . _Default
      . _Coerce

-- | Configuration for APIs allowed within Perimeter.
giamvspcVPCAccessibleServices :: Lens' GoogleIdentityAccesscontextManagerV1ServicePerimeterConfig (Maybe GoogleIdentityAccesscontextManagerV1VPCAccessibleServices)
giamvspcVPCAccessibleServices
  = lens _giamvspcVPCAccessibleServices
      (\ s a -> s{_giamvspcVPCAccessibleServices = a})

-- | Google Cloud services that are subject to the Service Perimeter
-- restrictions. For example, if \`storage.googleapis.com\` is specified,
-- access to the storage buckets inside the perimeter must meet the
-- perimeter\'s access restrictions.
giamvspcRestrictedServices :: Lens' GoogleIdentityAccesscontextManagerV1ServicePerimeterConfig [Text]
giamvspcRestrictedServices
  = lens _giamvspcRestrictedServices
      (\ s a -> s{_giamvspcRestrictedServices = a})
      . _Default
      . _Coerce

-- | List of EgressPolicies to apply to the perimeter. A perimeter may have
-- multiple EgressPolicies, each of which is evaluated separately. Access
-- is granted if any EgressPolicy grants it. Must be empty for a perimeter
-- bridge.
giamvspcEgressPolicies :: Lens' GoogleIdentityAccesscontextManagerV1ServicePerimeterConfig [GoogleIdentityAccesscontextManagerV1EgressPolicy]
giamvspcEgressPolicies
  = lens _giamvspcEgressPolicies
      (\ s a -> s{_giamvspcEgressPolicies = a})
      . _Default
      . _Coerce

-- | A list of \`AccessLevel\` resource names that allow resources within the
-- \`ServicePerimeter\` to be accessed from the internet. \`AccessLevels\`
-- listed must be in the same policy as this \`ServicePerimeter\`.
-- Referencing a nonexistent \`AccessLevel\` is a syntax error. If no
-- \`AccessLevel\` names are listed, resources within the perimeter can
-- only be accessed via Google Cloud calls with request origins within the
-- perimeter. Example:
-- \`\"accessPolicies\/MY_POLICY\/accessLevels\/MY_LEVEL\"\`. For Service
-- Perimeter Bridge, must be empty.
giamvspcAccessLevels :: Lens' GoogleIdentityAccesscontextManagerV1ServicePerimeterConfig [Text]
giamvspcAccessLevels
  = lens _giamvspcAccessLevels
      (\ s a -> s{_giamvspcAccessLevels = a})
      . _Default
      . _Coerce

-- | List of IngressPolicies to apply to the perimeter. A perimeter may have
-- multiple IngressPolicies, each of which is evaluated separately. Access
-- is granted if any Ingress Policy grants it. Must be empty for a
-- perimeter bridge.
giamvspcIngressPolicies :: Lens' GoogleIdentityAccesscontextManagerV1ServicePerimeterConfig [GoogleIdentityAccesscontextManagerV1IngressPolicy]
giamvspcIngressPolicies
  = lens _giamvspcIngressPolicies
      (\ s a -> s{_giamvspcIngressPolicies = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleIdentityAccesscontextManagerV1ServicePerimeterConfig
         where
        parseJSON
          = withObject
              "GoogleIdentityAccesscontextManagerV1ServicePerimeterConfig"
              (\ o ->
                 GoogleIdentityAccesscontextManagerV1ServicePerimeterConfig'
                   <$>
                   (o .:? "resources" .!= mempty) <*>
                     (o .:? "vpcAccessibleServices")
                     <*> (o .:? "restrictedServices" .!= mempty)
                     <*> (o .:? "egressPolicies" .!= mempty)
                     <*> (o .:? "accessLevels" .!= mempty)
                     <*> (o .:? "ingressPolicies" .!= mempty))

instance ToJSON
           GoogleIdentityAccesscontextManagerV1ServicePerimeterConfig
         where
        toJSON
          GoogleIdentityAccesscontextManagerV1ServicePerimeterConfig'{..}
          = object
              (catMaybes
                 [("resources" .=) <$> _giamvspcResources,
                  ("vpcAccessibleServices" .=) <$>
                    _giamvspcVPCAccessibleServices,
                  ("restrictedServices" .=) <$>
                    _giamvspcRestrictedServices,
                  ("egressPolicies" .=) <$> _giamvspcEgressPolicies,
                  ("accessLevels" .=) <$> _giamvspcAccessLevels,
                  ("ingressPolicies" .=) <$> _giamvspcIngressPolicies])

-- | The source that IngressPolicy authorizes access from.
--
-- /See:/ 'googleIdentityAccesscontextManagerV1IngressSource' smart constructor.
data GoogleIdentityAccesscontextManagerV1IngressSource =
  GoogleIdentityAccesscontextManagerV1IngressSource'
    { _giamvisAccessLevel :: !(Maybe Text)
    , _giamvisResource :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleIdentityAccesscontextManagerV1IngressSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giamvisAccessLevel'
--
-- * 'giamvisResource'
googleIdentityAccesscontextManagerV1IngressSource
    :: GoogleIdentityAccesscontextManagerV1IngressSource
googleIdentityAccesscontextManagerV1IngressSource =
  GoogleIdentityAccesscontextManagerV1IngressSource'
    {_giamvisAccessLevel = Nothing, _giamvisResource = Nothing}


-- | An AccessLevel resource name that allow resources within the
-- ServicePerimeters to be accessed from the internet. AccessLevels listed
-- must be in the same policy as this ServicePerimeter. Referencing a
-- nonexistent AccessLevel will cause an error. If no AccessLevel names are
-- listed, resources within the perimeter can only be accessed via Google
-- Cloud calls with request origins within the perimeter. Example:
-- \`accessPolicies\/MY_POLICY\/accessLevels\/MY_LEVEL\`. If a single \`*\`
-- is specified for \`access_level\`, then all IngressSources will be
-- allowed.
giamvisAccessLevel :: Lens' GoogleIdentityAccesscontextManagerV1IngressSource (Maybe Text)
giamvisAccessLevel
  = lens _giamvisAccessLevel
      (\ s a -> s{_giamvisAccessLevel = a})

-- | A Google Cloud resource that is allowed to ingress the perimeter.
-- Requests from these resources will be allowed to access perimeter data.
-- Currently only projects are allowed. Format:
-- \`projects\/{project_number}\` The project may be in any Google Cloud
-- organization, not just the organization that the perimeter is defined
-- in. \`*\` is not allowed, the case of allowing all Google Cloud
-- resources only is not supported.
giamvisResource :: Lens' GoogleIdentityAccesscontextManagerV1IngressSource (Maybe Text)
giamvisResource
  = lens _giamvisResource
      (\ s a -> s{_giamvisResource = a})

instance FromJSON
           GoogleIdentityAccesscontextManagerV1IngressSource
         where
        parseJSON
          = withObject
              "GoogleIdentityAccesscontextManagerV1IngressSource"
              (\ o ->
                 GoogleIdentityAccesscontextManagerV1IngressSource'
                   <$> (o .:? "accessLevel") <*> (o .:? "resource"))

instance ToJSON
           GoogleIdentityAccesscontextManagerV1IngressSource
         where
        toJSON
          GoogleIdentityAccesscontextManagerV1IngressSource'{..}
          = object
              (catMaybes
                 [("accessLevel" .=) <$> _giamvisAccessLevel,
                  ("resource" .=) <$> _giamvisResource])

-- | An \`AccessLevel\` is a label that can be applied to requests to Google
-- Cloud services, along with a list of requirements necessary for the
-- label to be applied.
--
-- /See:/ 'googleIdentityAccesscontextManagerV1AccessLevel' smart constructor.
data GoogleIdentityAccesscontextManagerV1AccessLevel =
  GoogleIdentityAccesscontextManagerV1AccessLevel'
    { _giamvalBasic :: !(Maybe GoogleIdentityAccesscontextManagerV1BasicLevel)
    , _giamvalCustom :: !(Maybe GoogleIdentityAccesscontextManagerV1CustomLevel)
    , _giamvalName :: !(Maybe Text)
    , _giamvalTitle :: !(Maybe Text)
    , _giamvalDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleIdentityAccesscontextManagerV1AccessLevel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giamvalBasic'
--
-- * 'giamvalCustom'
--
-- * 'giamvalName'
--
-- * 'giamvalTitle'
--
-- * 'giamvalDescription'
googleIdentityAccesscontextManagerV1AccessLevel
    :: GoogleIdentityAccesscontextManagerV1AccessLevel
googleIdentityAccesscontextManagerV1AccessLevel =
  GoogleIdentityAccesscontextManagerV1AccessLevel'
    { _giamvalBasic = Nothing
    , _giamvalCustom = Nothing
    , _giamvalName = Nothing
    , _giamvalTitle = Nothing
    , _giamvalDescription = Nothing
    }


-- | A \`BasicLevel\` composed of \`Conditions\`.
giamvalBasic :: Lens' GoogleIdentityAccesscontextManagerV1AccessLevel (Maybe GoogleIdentityAccesscontextManagerV1BasicLevel)
giamvalBasic
  = lens _giamvalBasic (\ s a -> s{_giamvalBasic = a})

-- | A \`CustomLevel\` written in the Common Expression Language.
giamvalCustom :: Lens' GoogleIdentityAccesscontextManagerV1AccessLevel (Maybe GoogleIdentityAccesscontextManagerV1CustomLevel)
giamvalCustom
  = lens _giamvalCustom
      (\ s a -> s{_giamvalCustom = a})

-- | Required. Resource name for the Access Level. The \`short_name\`
-- component must begin with a letter and only include alphanumeric and
-- \'_\'. Format:
-- \`accessPolicies\/{policy_id}\/accessLevels\/{short_name}\`. The maximum
-- length of the \`short_name\` component is 50 characters.
giamvalName :: Lens' GoogleIdentityAccesscontextManagerV1AccessLevel (Maybe Text)
giamvalName
  = lens _giamvalName (\ s a -> s{_giamvalName = a})

-- | Human readable title. Must be unique within the Policy.
giamvalTitle :: Lens' GoogleIdentityAccesscontextManagerV1AccessLevel (Maybe Text)
giamvalTitle
  = lens _giamvalTitle (\ s a -> s{_giamvalTitle = a})

-- | Description of the \`AccessLevel\` and its use. Does not affect
-- behavior.
giamvalDescription :: Lens' GoogleIdentityAccesscontextManagerV1AccessLevel (Maybe Text)
giamvalDescription
  = lens _giamvalDescription
      (\ s a -> s{_giamvalDescription = a})

instance FromJSON
           GoogleIdentityAccesscontextManagerV1AccessLevel
         where
        parseJSON
          = withObject
              "GoogleIdentityAccesscontextManagerV1AccessLevel"
              (\ o ->
                 GoogleIdentityAccesscontextManagerV1AccessLevel' <$>
                   (o .:? "basic") <*> (o .:? "custom") <*>
                     (o .:? "name")
                     <*> (o .:? "title")
                     <*> (o .:? "description"))

instance ToJSON
           GoogleIdentityAccesscontextManagerV1AccessLevel
         where
        toJSON
          GoogleIdentityAccesscontextManagerV1AccessLevel'{..}
          = object
              (catMaybes
                 [("basic" .=) <$> _giamvalBasic,
                  ("custom" .=) <$> _giamvalCustom,
                  ("name" .=) <$> _giamvalName,
                  ("title" .=) <$> _giamvalTitle,
                  ("description" .=) <$> _giamvalDescription])

-- | This resource represents a long-running operation that is the result of
-- a network API call.
--
-- /See:/ 'operation' smart constructor.
data Operation =
  Operation'
    { _oDone :: !(Maybe Bool)
    , _oError :: !(Maybe Status)
    , _oResponse :: !(Maybe OperationResponse)
    , _oName :: !(Maybe Text)
    , _oMetadata :: !(Maybe OperationMetadata)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Operation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oDone'
--
-- * 'oError'
--
-- * 'oResponse'
--
-- * 'oName'
--
-- * 'oMetadata'
operation
    :: Operation
operation =
  Operation'
    { _oDone = Nothing
    , _oError = Nothing
    , _oResponse = Nothing
    , _oName = Nothing
    , _oMetadata = Nothing
    }


-- | If the value is \`false\`, it means the operation is still in progress.
-- If \`true\`, the operation is completed, and either \`error\` or
-- \`response\` is available.
oDone :: Lens' Operation (Maybe Bool)
oDone = lens _oDone (\ s a -> s{_oDone = a})

-- | The error result of the operation in case of failure or cancellation.
oError :: Lens' Operation (Maybe Status)
oError = lens _oError (\ s a -> s{_oError = a})

-- | The normal response of the operation in case of success. If the original
-- method returns no data on success, such as \`Delete\`, the response is
-- \`google.protobuf.Empty\`. If the original method is standard
-- \`Get\`\/\`Create\`\/\`Update\`, the response should be the resource.
-- For other methods, the response should have the type \`XxxResponse\`,
-- where \`Xxx\` is the original method name. For example, if the original
-- method name is \`TakeSnapshot()\`, the inferred response type is
-- \`TakeSnapshotResponse\`.
oResponse :: Lens' Operation (Maybe OperationResponse)
oResponse
  = lens _oResponse (\ s a -> s{_oResponse = a})

-- | The server-assigned name, which is only unique within the same service
-- that originally returns it. If you use the default HTTP mapping, the
-- \`name\` should be a resource name ending with
-- \`operations\/{unique_id}\`.
oName :: Lens' Operation (Maybe Text)
oName = lens _oName (\ s a -> s{_oName = a})

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
oMetadata :: Lens' Operation (Maybe OperationMetadata)
oMetadata
  = lens _oMetadata (\ s a -> s{_oMetadata = a})

instance FromJSON Operation where
        parseJSON
          = withObject "Operation"
              (\ o ->
                 Operation' <$>
                   (o .:? "done") <*> (o .:? "error") <*>
                     (o .:? "response")
                     <*> (o .:? "name")
                     <*> (o .:? "metadata"))

instance ToJSON Operation where
        toJSON Operation'{..}
          = object
              (catMaybes
                 [("done" .=) <$> _oDone, ("error" .=) <$> _oError,
                  ("response" .=) <$> _oResponse,
                  ("name" .=) <$> _oName,
                  ("metadata" .=) <$> _oMetadata])

-- | Policy for egress from perimeter. EgressPolicies match requests based on
-- \`egress_from\` and \`egress_to\` stanzas. For an EgressPolicy to match,
-- both \`egress_from\` and \`egress_to\` stanzas must be matched. If an
-- EgressPolicy matches a request, the request is allowed to span the
-- ServicePerimeter boundary. For example, an EgressPolicy can be used to
-- allow VMs on networks within the ServicePerimeter to access a defined
-- set of projects outside the perimeter in certain contexts (e.g. to read
-- data from a Cloud Storage bucket or query against a BigQuery dataset).
-- EgressPolicies are concerned with the *resources* that a request relates
-- as well as the API services and API actions being used. They do not
-- related to the direction of data movement. More detailed documentation
-- for this concept can be found in the descriptions of EgressFrom and
-- EgressTo.
--
-- /See:/ 'googleIdentityAccesscontextManagerV1EgressPolicy' smart constructor.
data GoogleIdentityAccesscontextManagerV1EgressPolicy =
  GoogleIdentityAccesscontextManagerV1EgressPolicy'
    { _giamvepEgressFrom :: !(Maybe GoogleIdentityAccesscontextManagerV1EgressFrom)
    , _giamvepEgressTo :: !(Maybe GoogleIdentityAccesscontextManagerV1EgressTo)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleIdentityAccesscontextManagerV1EgressPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giamvepEgressFrom'
--
-- * 'giamvepEgressTo'
googleIdentityAccesscontextManagerV1EgressPolicy
    :: GoogleIdentityAccesscontextManagerV1EgressPolicy
googleIdentityAccesscontextManagerV1EgressPolicy =
  GoogleIdentityAccesscontextManagerV1EgressPolicy'
    {_giamvepEgressFrom = Nothing, _giamvepEgressTo = Nothing}


-- | Defines conditions on the source of a request causing this EgressPolicy
-- to apply.
giamvepEgressFrom :: Lens' GoogleIdentityAccesscontextManagerV1EgressPolicy (Maybe GoogleIdentityAccesscontextManagerV1EgressFrom)
giamvepEgressFrom
  = lens _giamvepEgressFrom
      (\ s a -> s{_giamvepEgressFrom = a})

-- | Defines the conditions on the ApiOperation and destination resources
-- that cause this EgressPolicy to apply.
giamvepEgressTo :: Lens' GoogleIdentityAccesscontextManagerV1EgressPolicy (Maybe GoogleIdentityAccesscontextManagerV1EgressTo)
giamvepEgressTo
  = lens _giamvepEgressTo
      (\ s a -> s{_giamvepEgressTo = a})

instance FromJSON
           GoogleIdentityAccesscontextManagerV1EgressPolicy
         where
        parseJSON
          = withObject
              "GoogleIdentityAccesscontextManagerV1EgressPolicy"
              (\ o ->
                 GoogleIdentityAccesscontextManagerV1EgressPolicy' <$>
                   (o .:? "egressFrom") <*> (o .:? "egressTo"))

instance ToJSON
           GoogleIdentityAccesscontextManagerV1EgressPolicy
         where
        toJSON
          GoogleIdentityAccesscontextManagerV1EgressPolicy'{..}
          = object
              (catMaybes
                 [("egressFrom" .=) <$> _giamvepEgressFrom,
                  ("egressTo" .=) <$> _giamvepEgressTo])

-- | Export asset request.
--
-- /See:/ 'googleCloudAssetV1p7beta1ExportAssetsRequest' smart constructor.
data GoogleCloudAssetV1p7beta1ExportAssetsRequest =
  GoogleCloudAssetV1p7beta1ExportAssetsRequest'
    { _gcavearReadTime :: !(Maybe DateTime')
    , _gcavearRelationshipTypes :: !(Maybe [Text])
    , _gcavearAssetTypes :: !(Maybe [Text])
    , _gcavearOutputConfig :: !(Maybe GoogleCloudAssetV1p7beta1OutputConfig)
    , _gcavearContentType :: !(Maybe GoogleCloudAssetV1p7beta1ExportAssetsRequestContentType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudAssetV1p7beta1ExportAssetsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcavearReadTime'
--
-- * 'gcavearRelationshipTypes'
--
-- * 'gcavearAssetTypes'
--
-- * 'gcavearOutputConfig'
--
-- * 'gcavearContentType'
googleCloudAssetV1p7beta1ExportAssetsRequest
    :: GoogleCloudAssetV1p7beta1ExportAssetsRequest
googleCloudAssetV1p7beta1ExportAssetsRequest =
  GoogleCloudAssetV1p7beta1ExportAssetsRequest'
    { _gcavearReadTime = Nothing
    , _gcavearRelationshipTypes = Nothing
    , _gcavearAssetTypes = Nothing
    , _gcavearOutputConfig = Nothing
    , _gcavearContentType = Nothing
    }


-- | Timestamp to take an asset snapshot. This can only be set to a timestamp
-- between the current time and the current time minus 35 days (inclusive).
-- If not specified, the current time will be used. Due to delays in
-- resource data collection and indexing, there is a volatile window during
-- which running the same query may get different results.
gcavearReadTime :: Lens' GoogleCloudAssetV1p7beta1ExportAssetsRequest (Maybe UTCTime)
gcavearReadTime
  = lens _gcavearReadTime
      (\ s a -> s{_gcavearReadTime = a})
      . mapping _DateTime

-- | A list of relationship types to export, for example:
-- \`INSTANCE_TO_INSTANCEGROUP\`. This field should only be specified if
-- content_type=RELATIONSHIP. If specified, it will snapshot
-- [asset_types]\' specified relationships, or give errors if any
-- relationship_types\' supported types are not in [asset_types]. If not
-- specified, it will snapshot all [asset_types]\' supported relationships.
-- An unspecified [asset_types] field means all supported asset_types. See
-- [Introduction to Cloud Asset
-- Inventory](https:\/\/cloud.google.com\/asset-inventory\/docs\/overview)
-- for all supported asset types and relationship types.
gcavearRelationshipTypes :: Lens' GoogleCloudAssetV1p7beta1ExportAssetsRequest [Text]
gcavearRelationshipTypes
  = lens _gcavearRelationshipTypes
      (\ s a -> s{_gcavearRelationshipTypes = a})
      . _Default
      . _Coerce

-- | A list of asset types to take a snapshot for. For example:
-- \"compute.googleapis.com\/Disk\". Regular expressions are also
-- supported. For example: * \"compute.googleapis.com.*\" snapshots
-- resources whose asset type starts with \"compute.googleapis.com\". *
-- \".*Instance\" snapshots resources whose asset type ends with
-- \"Instance\". * \".*Instance.*\" snapshots resources whose asset type
-- contains \"Instance\". See
-- [RE2](https:\/\/github.com\/google\/re2\/wiki\/Syntax) for all supported
-- regular expression syntax. If the regular expression does not match any
-- supported asset type, an INVALID_ARGUMENT error will be returned. If
-- specified, only matching assets will be returned, otherwise, it will
-- snapshot all asset types. See [Introduction to Cloud Asset
-- Inventory](https:\/\/cloud.google.com\/asset-inventory\/docs\/overview)
-- for all supported asset types.
gcavearAssetTypes :: Lens' GoogleCloudAssetV1p7beta1ExportAssetsRequest [Text]
gcavearAssetTypes
  = lens _gcavearAssetTypes
      (\ s a -> s{_gcavearAssetTypes = a})
      . _Default
      . _Coerce

-- | Required. Output configuration indicating where the results will be
-- output to.
gcavearOutputConfig :: Lens' GoogleCloudAssetV1p7beta1ExportAssetsRequest (Maybe GoogleCloudAssetV1p7beta1OutputConfig)
gcavearOutputConfig
  = lens _gcavearOutputConfig
      (\ s a -> s{_gcavearOutputConfig = a})

-- | Asset content type. If not specified, no content but the asset name will
-- be returned.
gcavearContentType :: Lens' GoogleCloudAssetV1p7beta1ExportAssetsRequest (Maybe GoogleCloudAssetV1p7beta1ExportAssetsRequestContentType)
gcavearContentType
  = lens _gcavearContentType
      (\ s a -> s{_gcavearContentType = a})

instance FromJSON
           GoogleCloudAssetV1p7beta1ExportAssetsRequest
         where
        parseJSON
          = withObject
              "GoogleCloudAssetV1p7beta1ExportAssetsRequest"
              (\ o ->
                 GoogleCloudAssetV1p7beta1ExportAssetsRequest' <$>
                   (o .:? "readTime") <*>
                     (o .:? "relationshipTypes" .!= mempty)
                     <*> (o .:? "assetTypes" .!= mempty)
                     <*> (o .:? "outputConfig")
                     <*> (o .:? "contentType"))

instance ToJSON
           GoogleCloudAssetV1p7beta1ExportAssetsRequest
         where
        toJSON
          GoogleCloudAssetV1p7beta1ExportAssetsRequest'{..}
          = object
              (catMaybes
                 [("readTime" .=) <$> _gcavearReadTime,
                  ("relationshipTypes" .=) <$>
                    _gcavearRelationshipTypes,
                  ("assetTypes" .=) <$> _gcavearAssetTypes,
                  ("outputConfig" .=) <$> _gcavearOutputConfig,
                  ("contentType" .=) <$> _gcavearContentType])

-- | A Cloud Storage location.
--
-- /See:/ 'googleCloudAssetV1p7beta1GcsDestination' smart constructor.
data GoogleCloudAssetV1p7beta1GcsDestination =
  GoogleCloudAssetV1p7beta1GcsDestination'
    { _gcavgdURIPrefix :: !(Maybe Text)
    , _gcavgdURI :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudAssetV1p7beta1GcsDestination' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcavgdURIPrefix'
--
-- * 'gcavgdURI'
googleCloudAssetV1p7beta1GcsDestination
    :: GoogleCloudAssetV1p7beta1GcsDestination
googleCloudAssetV1p7beta1GcsDestination =
  GoogleCloudAssetV1p7beta1GcsDestination'
    {_gcavgdURIPrefix = Nothing, _gcavgdURI = Nothing}


-- | The uri prefix of all generated Cloud Storage objects. Example:
-- \"gs:\/\/bucket_name\/object_name_prefix\". Each object uri is in
-- format:
-- \"gs:\/\/bucket_name\/object_name_prefix\/{ASSET_TYPE}\/{SHARD_NUMBER}
-- and only contains assets for that type. starts from 0. Example:
-- \"gs:\/\/bucket_name\/object_name_prefix\/compute.googleapis.com\/Disk\/0\"
-- is the first shard of output objects containing all
-- compute.googleapis.com\/Disk assets. An INVALID_ARGUMENT error will be
-- returned if file with the same name
-- \"gs:\/\/bucket_name\/object_name_prefix\" already exists.
gcavgdURIPrefix :: Lens' GoogleCloudAssetV1p7beta1GcsDestination (Maybe Text)
gcavgdURIPrefix
  = lens _gcavgdURIPrefix
      (\ s a -> s{_gcavgdURIPrefix = a})

-- | The uri of the Cloud Storage object. It\'s the same uri that is used by
-- gsutil. Example: \"gs:\/\/bucket_name\/object_name\". See [Viewing and
-- Editing Object
-- Metadata](https:\/\/cloud.google.com\/storage\/docs\/viewing-editing-metadata)
-- for more information.
gcavgdURI :: Lens' GoogleCloudAssetV1p7beta1GcsDestination (Maybe Text)
gcavgdURI
  = lens _gcavgdURI (\ s a -> s{_gcavgdURI = a})

instance FromJSON
           GoogleCloudAssetV1p7beta1GcsDestination
         where
        parseJSON
          = withObject
              "GoogleCloudAssetV1p7beta1GcsDestination"
              (\ o ->
                 GoogleCloudAssetV1p7beta1GcsDestination' <$>
                   (o .:? "uriPrefix") <*> (o .:? "uri"))

instance ToJSON
           GoogleCloudAssetV1p7beta1GcsDestination
         where
        toJSON GoogleCloudAssetV1p7beta1GcsDestination'{..}
          = object
              (catMaybes
                 [("uriPrefix" .=) <$> _gcavgdURIPrefix,
                  ("uri" .=) <$> _gcavgdURI])

-- | \`ServicePerimeter\` describes a set of Google Cloud resources which can
-- freely import and export data amongst themselves, but not export outside
-- of the \`ServicePerimeter\`. If a request with a source within this
-- \`ServicePerimeter\` has a target outside of the \`ServicePerimeter\`,
-- the request will be blocked. Otherwise the request is allowed. There are
-- two types of Service Perimeter - Regular and Bridge. Regular Service
-- Perimeters cannot overlap, a single Google Cloud project can only belong
-- to a single regular Service Perimeter. Service Perimeter Bridges can
-- contain only Google Cloud projects as members, a single Google Cloud
-- project may belong to multiple Service Perimeter Bridges.
--
-- /See:/ 'googleIdentityAccesscontextManagerV1ServicePerimeter' smart constructor.
data GoogleIdentityAccesscontextManagerV1ServicePerimeter =
  GoogleIdentityAccesscontextManagerV1ServicePerimeter'
    { _giamvspStatus :: !(Maybe GoogleIdentityAccesscontextManagerV1ServicePerimeterConfig)
    , _giamvspPerimeterType :: !(Maybe GoogleIdentityAccesscontextManagerV1ServicePerimeterPerimeterType)
    , _giamvspName :: !(Maybe Text)
    , _giamvspSpec :: !(Maybe GoogleIdentityAccesscontextManagerV1ServicePerimeterConfig)
    , _giamvspTitle :: !(Maybe Text)
    , _giamvspUseExplicitDryRunSpec :: !(Maybe Bool)
    , _giamvspDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleIdentityAccesscontextManagerV1ServicePerimeter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giamvspStatus'
--
-- * 'giamvspPerimeterType'
--
-- * 'giamvspName'
--
-- * 'giamvspSpec'
--
-- * 'giamvspTitle'
--
-- * 'giamvspUseExplicitDryRunSpec'
--
-- * 'giamvspDescription'
googleIdentityAccesscontextManagerV1ServicePerimeter
    :: GoogleIdentityAccesscontextManagerV1ServicePerimeter
googleIdentityAccesscontextManagerV1ServicePerimeter =
  GoogleIdentityAccesscontextManagerV1ServicePerimeter'
    { _giamvspStatus = Nothing
    , _giamvspPerimeterType = Nothing
    , _giamvspName = Nothing
    , _giamvspSpec = Nothing
    , _giamvspTitle = Nothing
    , _giamvspUseExplicitDryRunSpec = Nothing
    , _giamvspDescription = Nothing
    }


-- | Current ServicePerimeter configuration. Specifies sets of resources,
-- restricted services and access levels that determine perimeter content
-- and boundaries.
giamvspStatus :: Lens' GoogleIdentityAccesscontextManagerV1ServicePerimeter (Maybe GoogleIdentityAccesscontextManagerV1ServicePerimeterConfig)
giamvspStatus
  = lens _giamvspStatus
      (\ s a -> s{_giamvspStatus = a})

-- | Perimeter type indicator. A single project is allowed to be a member of
-- single regular perimeter, but multiple service perimeter bridges. A
-- project cannot be a included in a perimeter bridge without being
-- included in regular perimeter. For perimeter bridges, the restricted
-- service list as well as access level lists must be empty.
giamvspPerimeterType :: Lens' GoogleIdentityAccesscontextManagerV1ServicePerimeter (Maybe GoogleIdentityAccesscontextManagerV1ServicePerimeterPerimeterType)
giamvspPerimeterType
  = lens _giamvspPerimeterType
      (\ s a -> s{_giamvspPerimeterType = a})

-- | Required. Resource name for the ServicePerimeter. The \`short_name\`
-- component must begin with a letter and only include alphanumeric and
-- \'_\'. Format:
-- \`accessPolicies\/{policy_id}\/servicePerimeters\/{short_name}\`
giamvspName :: Lens' GoogleIdentityAccesscontextManagerV1ServicePerimeter (Maybe Text)
giamvspName
  = lens _giamvspName (\ s a -> s{_giamvspName = a})

-- | Proposed (or dry run) ServicePerimeter configuration. This configuration
-- allows to specify and test ServicePerimeter configuration without
-- enforcing actual access restrictions. Only allowed to be set when the
-- \"use_explicit_dry_run_spec\" flag is set.
giamvspSpec :: Lens' GoogleIdentityAccesscontextManagerV1ServicePerimeter (Maybe GoogleIdentityAccesscontextManagerV1ServicePerimeterConfig)
giamvspSpec
  = lens _giamvspSpec (\ s a -> s{_giamvspSpec = a})

-- | Human readable title. Must be unique within the Policy.
giamvspTitle :: Lens' GoogleIdentityAccesscontextManagerV1ServicePerimeter (Maybe Text)
giamvspTitle
  = lens _giamvspTitle (\ s a -> s{_giamvspTitle = a})

-- | Use explicit dry run spec flag. Ordinarily, a dry-run spec implicitly
-- exists for all Service Perimeters, and that spec is identical to the
-- status for those Service Perimeters. When this flag is set, it inhibits
-- the generation of the implicit spec, thereby allowing the user to
-- explicitly provide a configuration (\"spec\") to use in a dry-run
-- version of the Service Perimeter. This allows the user to test changes
-- to the enforced config (\"status\") without actually enforcing them.
-- This testing is done through analyzing the differences between currently
-- enforced and suggested restrictions. use_explicit_dry_run_spec must bet
-- set to True if any of the fields in the spec are set to non-default
-- values.
giamvspUseExplicitDryRunSpec :: Lens' GoogleIdentityAccesscontextManagerV1ServicePerimeter (Maybe Bool)
giamvspUseExplicitDryRunSpec
  = lens _giamvspUseExplicitDryRunSpec
      (\ s a -> s{_giamvspUseExplicitDryRunSpec = a})

-- | Description of the \`ServicePerimeter\` and its use. Does not affect
-- behavior.
giamvspDescription :: Lens' GoogleIdentityAccesscontextManagerV1ServicePerimeter (Maybe Text)
giamvspDescription
  = lens _giamvspDescription
      (\ s a -> s{_giamvspDescription = a})

instance FromJSON
           GoogleIdentityAccesscontextManagerV1ServicePerimeter
         where
        parseJSON
          = withObject
              "GoogleIdentityAccesscontextManagerV1ServicePerimeter"
              (\ o ->
                 GoogleIdentityAccesscontextManagerV1ServicePerimeter'
                   <$>
                   (o .:? "status") <*> (o .:? "perimeterType") <*>
                     (o .:? "name")
                     <*> (o .:? "spec")
                     <*> (o .:? "title")
                     <*> (o .:? "useExplicitDryRunSpec")
                     <*> (o .:? "description"))

instance ToJSON
           GoogleIdentityAccesscontextManagerV1ServicePerimeter
         where
        toJSON
          GoogleIdentityAccesscontextManagerV1ServicePerimeter'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _giamvspStatus,
                  ("perimeterType" .=) <$> _giamvspPerimeterType,
                  ("name" .=) <$> _giamvspName,
                  ("spec" .=) <$> _giamvspSpec,
                  ("title" .=) <$> _giamvspTitle,
                  ("useExplicitDryRunSpec" .=) <$>
                    _giamvspUseExplicitDryRunSpec,
                  ("description" .=) <$> _giamvspDescription])

-- | Defines the conditions under which an EgressPolicy matches a request.
-- Conditions based on information about the source of the request. Note
-- that if the destination of the request is also protected by a
-- ServicePerimeter, then that ServicePerimeter must have an IngressPolicy
-- which allows access in order for this request to succeed.
--
-- /See:/ 'googleIdentityAccesscontextManagerV1EgressFrom' smart constructor.
data GoogleIdentityAccesscontextManagerV1EgressFrom =
  GoogleIdentityAccesscontextManagerV1EgressFrom'
    { _giamvefIdentityType :: !(Maybe GoogleIdentityAccesscontextManagerV1EgressFromIdentityType)
    , _giamvefIdentities :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleIdentityAccesscontextManagerV1EgressFrom' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giamvefIdentityType'
--
-- * 'giamvefIdentities'
googleIdentityAccesscontextManagerV1EgressFrom
    :: GoogleIdentityAccesscontextManagerV1EgressFrom
googleIdentityAccesscontextManagerV1EgressFrom =
  GoogleIdentityAccesscontextManagerV1EgressFrom'
    {_giamvefIdentityType = Nothing, _giamvefIdentities = Nothing}


-- | Specifies the type of identities that are allowed access to outside the
-- perimeter. If left unspecified, then members of \`identities\` field
-- will be allowed access.
giamvefIdentityType :: Lens' GoogleIdentityAccesscontextManagerV1EgressFrom (Maybe GoogleIdentityAccesscontextManagerV1EgressFromIdentityType)
giamvefIdentityType
  = lens _giamvefIdentityType
      (\ s a -> s{_giamvefIdentityType = a})

-- | A list of identities that are allowed access through this
-- [EgressPolicy]. Should be in the format of email address. The email
-- address should represent individual user or service account only.
giamvefIdentities :: Lens' GoogleIdentityAccesscontextManagerV1EgressFrom [Text]
giamvefIdentities
  = lens _giamvefIdentities
      (\ s a -> s{_giamvefIdentities = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleIdentityAccesscontextManagerV1EgressFrom
         where
        parseJSON
          = withObject
              "GoogleIdentityAccesscontextManagerV1EgressFrom"
              (\ o ->
                 GoogleIdentityAccesscontextManagerV1EgressFrom' <$>
                   (o .:? "identityType") <*>
                     (o .:? "identities" .!= mempty))

instance ToJSON
           GoogleIdentityAccesscontextManagerV1EgressFrom
         where
        toJSON
          GoogleIdentityAccesscontextManagerV1EgressFrom'{..}
          = object
              (catMaybes
                 [("identityType" .=) <$> _giamvefIdentityType,
                  ("identities" .=) <$> _giamvefIdentities])

--
-- /See:/ 'statusDetailsItem' smart constructor.
newtype StatusDetailsItem =
  StatusDetailsItem'
    { _sdiAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StatusDetailsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdiAddtional'
statusDetailsItem
    :: HashMap Text JSONValue -- ^ 'sdiAddtional'
    -> StatusDetailsItem
statusDetailsItem pSdiAddtional_ =
  StatusDetailsItem' {_sdiAddtional = _Coerce # pSdiAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
sdiAddtional :: Lens' StatusDetailsItem (HashMap Text JSONValue)
sdiAddtional
  = lens _sdiAddtional (\ s a -> s{_sdiAddtional = a})
      . _Coerce

instance FromJSON StatusDetailsItem where
        parseJSON
          = withObject "StatusDetailsItem"
              (\ o -> StatusDetailsItem' <$> (parseJSONObject o))

instance ToJSON StatusDetailsItem where
        toJSON = toJSON . _sdiAddtional

-- | Output configuration for export assets destination.
--
-- /See:/ 'googleCloudAssetV1p7beta1OutputConfig' smart constructor.
data GoogleCloudAssetV1p7beta1OutputConfig =
  GoogleCloudAssetV1p7beta1OutputConfig'
    { _gcavocBigQueryDestination :: !(Maybe GoogleCloudAssetV1p7beta1BigQueryDestination)
    , _gcavocGcsDestination :: !(Maybe GoogleCloudAssetV1p7beta1GcsDestination)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudAssetV1p7beta1OutputConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcavocBigQueryDestination'
--
-- * 'gcavocGcsDestination'
googleCloudAssetV1p7beta1OutputConfig
    :: GoogleCloudAssetV1p7beta1OutputConfig
googleCloudAssetV1p7beta1OutputConfig =
  GoogleCloudAssetV1p7beta1OutputConfig'
    {_gcavocBigQueryDestination = Nothing, _gcavocGcsDestination = Nothing}


-- | Destination on BigQuery. The output table stores the fields in asset
-- proto as columns in BigQuery.
gcavocBigQueryDestination :: Lens' GoogleCloudAssetV1p7beta1OutputConfig (Maybe GoogleCloudAssetV1p7beta1BigQueryDestination)
gcavocBigQueryDestination
  = lens _gcavocBigQueryDestination
      (\ s a -> s{_gcavocBigQueryDestination = a})

-- | Destination on Cloud Storage.
gcavocGcsDestination :: Lens' GoogleCloudAssetV1p7beta1OutputConfig (Maybe GoogleCloudAssetV1p7beta1GcsDestination)
gcavocGcsDestination
  = lens _gcavocGcsDestination
      (\ s a -> s{_gcavocGcsDestination = a})

instance FromJSON
           GoogleCloudAssetV1p7beta1OutputConfig
         where
        parseJSON
          = withObject "GoogleCloudAssetV1p7beta1OutputConfig"
              (\ o ->
                 GoogleCloudAssetV1p7beta1OutputConfig' <$>
                   (o .:? "bigqueryDestination") <*>
                     (o .:? "gcsDestination"))

instance ToJSON GoogleCloudAssetV1p7beta1OutputConfig
         where
        toJSON GoogleCloudAssetV1p7beta1OutputConfig'{..}
          = object
              (catMaybes
                 [("bigqueryDestination" .=) <$>
                    _gcavocBigQueryDestination,
                  ("gcsDestination" .=) <$> _gcavocGcsDestination])

-- | Defines the conditions under which an EgressPolicy matches a request.
-- Conditions are based on information about the ApiOperation intended to
-- be performed on the \`resources\` specified. Note that if the
-- destination of the request is also protected by a ServicePerimeter, then
-- that ServicePerimeter must have an IngressPolicy which allows access in
-- order for this request to succeed. The request must match \`operations\`
-- AND \`resources\` fields in order to be allowed egress out of the
-- perimeter.
--
-- /See:/ 'googleIdentityAccesscontextManagerV1EgressTo' smart constructor.
data GoogleIdentityAccesscontextManagerV1EgressTo =
  GoogleIdentityAccesscontextManagerV1EgressTo'
    { _giamvetResources :: !(Maybe [Text])
    , _giamvetOperations :: !(Maybe [GoogleIdentityAccesscontextManagerV1APIOperation])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleIdentityAccesscontextManagerV1EgressTo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giamvetResources'
--
-- * 'giamvetOperations'
googleIdentityAccesscontextManagerV1EgressTo
    :: GoogleIdentityAccesscontextManagerV1EgressTo
googleIdentityAccesscontextManagerV1EgressTo =
  GoogleIdentityAccesscontextManagerV1EgressTo'
    {_giamvetResources = Nothing, _giamvetOperations = Nothing}


-- | A list of resources, currently only projects in the form \`projects\/\`,
-- that are allowed to be accessed by sources defined in the corresponding
-- EgressFrom. A request matches if it contains a resource in this list. If
-- \`*\` is specified for \`resources\`, then this EgressTo rule will
-- authorize access to all resources outside the perimeter.
giamvetResources :: Lens' GoogleIdentityAccesscontextManagerV1EgressTo [Text]
giamvetResources
  = lens _giamvetResources
      (\ s a -> s{_giamvetResources = a})
      . _Default
      . _Coerce

-- | A list of ApiOperations allowed to be performed by the sources specified
-- in the corresponding EgressFrom. A request matches if it uses an
-- operation\/service in this list.
giamvetOperations :: Lens' GoogleIdentityAccesscontextManagerV1EgressTo [GoogleIdentityAccesscontextManagerV1APIOperation]
giamvetOperations
  = lens _giamvetOperations
      (\ s a -> s{_giamvetOperations = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleIdentityAccesscontextManagerV1EgressTo
         where
        parseJSON
          = withObject
              "GoogleIdentityAccesscontextManagerV1EgressTo"
              (\ o ->
                 GoogleIdentityAccesscontextManagerV1EgressTo' <$>
                   (o .:? "resources" .!= mempty) <*>
                     (o .:? "operations" .!= mempty))

instance ToJSON
           GoogleIdentityAccesscontextManagerV1EgressTo
         where
        toJSON
          GoogleIdentityAccesscontextManagerV1EgressTo'{..}
          = object
              (catMaybes
                 [("resources" .=) <$> _giamvetResources,
                  ("operations" .=) <$> _giamvetOperations])

-- | Defines the conditions under which an IngressPolicy matches a request.
-- Conditions are based on information about the source of the request. The
-- request must satisfy what is defined in \`sources\` AND identity related
-- fields in order to match.
--
-- /See:/ 'googleIdentityAccesscontextManagerV1IngressFrom' smart constructor.
data GoogleIdentityAccesscontextManagerV1IngressFrom =
  GoogleIdentityAccesscontextManagerV1IngressFrom'
    { _giamvifIdentityType :: !(Maybe GoogleIdentityAccesscontextManagerV1IngressFromIdentityType)
    , _giamvifSources :: !(Maybe [GoogleIdentityAccesscontextManagerV1IngressSource])
    , _giamvifIdentities :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleIdentityAccesscontextManagerV1IngressFrom' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giamvifIdentityType'
--
-- * 'giamvifSources'
--
-- * 'giamvifIdentities'
googleIdentityAccesscontextManagerV1IngressFrom
    :: GoogleIdentityAccesscontextManagerV1IngressFrom
googleIdentityAccesscontextManagerV1IngressFrom =
  GoogleIdentityAccesscontextManagerV1IngressFrom'
    { _giamvifIdentityType = Nothing
    , _giamvifSources = Nothing
    , _giamvifIdentities = Nothing
    }


-- | Specifies the type of identities that are allowed access from outside
-- the perimeter. If left unspecified, then members of \`identities\` field
-- will be allowed access.
giamvifIdentityType :: Lens' GoogleIdentityAccesscontextManagerV1IngressFrom (Maybe GoogleIdentityAccesscontextManagerV1IngressFromIdentityType)
giamvifIdentityType
  = lens _giamvifIdentityType
      (\ s a -> s{_giamvifIdentityType = a})

-- | Sources that this IngressPolicy authorizes access from.
giamvifSources :: Lens' GoogleIdentityAccesscontextManagerV1IngressFrom [GoogleIdentityAccesscontextManagerV1IngressSource]
giamvifSources
  = lens _giamvifSources
      (\ s a -> s{_giamvifSources = a})
      . _Default
      . _Coerce

-- | A list of identities that are allowed access through this ingress
-- policy. Should be in the format of email address. The email address
-- should represent individual user or service account only.
giamvifIdentities :: Lens' GoogleIdentityAccesscontextManagerV1IngressFrom [Text]
giamvifIdentities
  = lens _giamvifIdentities
      (\ s a -> s{_giamvifIdentities = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleIdentityAccesscontextManagerV1IngressFrom
         where
        parseJSON
          = withObject
              "GoogleIdentityAccesscontextManagerV1IngressFrom"
              (\ o ->
                 GoogleIdentityAccesscontextManagerV1IngressFrom' <$>
                   (o .:? "identityType") <*>
                     (o .:? "sources" .!= mempty)
                     <*> (o .:? "identities" .!= mempty))

instance ToJSON
           GoogleIdentityAccesscontextManagerV1IngressFrom
         where
        toJSON
          GoogleIdentityAccesscontextManagerV1IngressFrom'{..}
          = object
              (catMaybes
                 [("identityType" .=) <$> _giamvifIdentityType,
                  ("sources" .=) <$> _giamvifSources,
                  ("identities" .=) <$> _giamvifIdentities])

-- | A restriction on the OS type and version of devices making requests.
--
-- /See:/ 'googleIdentityAccesscontextManagerV1OSConstraint' smart constructor.
data GoogleIdentityAccesscontextManagerV1OSConstraint =
  GoogleIdentityAccesscontextManagerV1OSConstraint'
    { _giamvocOSType :: !(Maybe GoogleIdentityAccesscontextManagerV1OSConstraintOSType)
    , _giamvocMinimumVersion :: !(Maybe Text)
    , _giamvocRequireVerifiedChromeOS :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleIdentityAccesscontextManagerV1OSConstraint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giamvocOSType'
--
-- * 'giamvocMinimumVersion'
--
-- * 'giamvocRequireVerifiedChromeOS'
googleIdentityAccesscontextManagerV1OSConstraint
    :: GoogleIdentityAccesscontextManagerV1OSConstraint
googleIdentityAccesscontextManagerV1OSConstraint =
  GoogleIdentityAccesscontextManagerV1OSConstraint'
    { _giamvocOSType = Nothing
    , _giamvocMinimumVersion = Nothing
    , _giamvocRequireVerifiedChromeOS = Nothing
    }


-- | Required. The allowed OS type.
giamvocOSType :: Lens' GoogleIdentityAccesscontextManagerV1OSConstraint (Maybe GoogleIdentityAccesscontextManagerV1OSConstraintOSType)
giamvocOSType
  = lens _giamvocOSType
      (\ s a -> s{_giamvocOSType = a})

-- | The minimum allowed OS version. If not set, any version of this OS
-- satisfies the constraint. Format: \`\"major.minor.patch\"\`. Examples:
-- \`\"10.5.301\"\`, \`\"9.2.1\"\`.
giamvocMinimumVersion :: Lens' GoogleIdentityAccesscontextManagerV1OSConstraint (Maybe Text)
giamvocMinimumVersion
  = lens _giamvocMinimumVersion
      (\ s a -> s{_giamvocMinimumVersion = a})

-- | Only allows requests from devices with a verified Chrome OS.
-- Verifications includes requirements that the device is
-- enterprise-managed, conformant to domain policies, and the caller has
-- permission to call the API targeted by the request.
giamvocRequireVerifiedChromeOS :: Lens' GoogleIdentityAccesscontextManagerV1OSConstraint (Maybe Bool)
giamvocRequireVerifiedChromeOS
  = lens _giamvocRequireVerifiedChromeOS
      (\ s a -> s{_giamvocRequireVerifiedChromeOS = a})

instance FromJSON
           GoogleIdentityAccesscontextManagerV1OSConstraint
         where
        parseJSON
          = withObject
              "GoogleIdentityAccesscontextManagerV1OSConstraint"
              (\ o ->
                 GoogleIdentityAccesscontextManagerV1OSConstraint' <$>
                   (o .:? "osType") <*> (o .:? "minimumVersion") <*>
                     (o .:? "requireVerifiedChromeOs"))

instance ToJSON
           GoogleIdentityAccesscontextManagerV1OSConstraint
         where
        toJSON
          GoogleIdentityAccesscontextManagerV1OSConstraint'{..}
          = object
              (catMaybes
                 [("osType" .=) <$> _giamvocOSType,
                  ("minimumVersion" .=) <$> _giamvocMinimumVersion,
                  ("requireVerifiedChromeOs" .=) <$>
                    _giamvocRequireVerifiedChromeOS])

-- | An asset identify in Google Cloud which contains its name, type and
-- ancestors. An asset can be any resource in the Google Cloud [resource
-- hierarchy](https:\/\/cloud.google.com\/resource-manager\/docs\/cloud-platform-resource-hierarchy),
-- a resource outside the Google Cloud resource hierarchy (such as Google
-- Kubernetes Engine clusters and objects), or a policy (e.g. Cloud IAM
-- policy). See [Supported asset
-- types](https:\/\/cloud.google.com\/asset-inventory\/docs\/supported-asset-types)
-- for more information.
--
-- /See:/ 'googleCloudAssetV1p7beta1RelatedAsset' smart constructor.
data GoogleCloudAssetV1p7beta1RelatedAsset =
  GoogleCloudAssetV1p7beta1RelatedAsset'
    { _gcavraAsset :: !(Maybe Text)
    , _gcavraAssetType :: !(Maybe Text)
    , _gcavraAncestors :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudAssetV1p7beta1RelatedAsset' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcavraAsset'
--
-- * 'gcavraAssetType'
--
-- * 'gcavraAncestors'
googleCloudAssetV1p7beta1RelatedAsset
    :: GoogleCloudAssetV1p7beta1RelatedAsset
googleCloudAssetV1p7beta1RelatedAsset =
  GoogleCloudAssetV1p7beta1RelatedAsset'
    { _gcavraAsset = Nothing
    , _gcavraAssetType = Nothing
    , _gcavraAncestors = Nothing
    }


-- | The full name of the asset. Example:
-- \`\/\/compute.googleapis.com\/projects\/my_project_123\/zones\/zone1\/instances\/instance1\`
-- See [Resource
-- names](https:\/\/cloud.google.com\/apis\/design\/resource_names#full_resource_name)
-- for more information.
gcavraAsset :: Lens' GoogleCloudAssetV1p7beta1RelatedAsset (Maybe Text)
gcavraAsset
  = lens _gcavraAsset (\ s a -> s{_gcavraAsset = a})

-- | The type of the asset. Example: \`compute.googleapis.com\/Disk\` See
-- [Supported asset
-- types](https:\/\/cloud.google.com\/asset-inventory\/docs\/supported-asset-types)
-- for more information.
gcavraAssetType :: Lens' GoogleCloudAssetV1p7beta1RelatedAsset (Maybe Text)
gcavraAssetType
  = lens _gcavraAssetType
      (\ s a -> s{_gcavraAssetType = a})

-- | The ancestors of an asset in Google Cloud [resource
-- hierarchy](https:\/\/cloud.google.com\/resource-manager\/docs\/cloud-platform-resource-hierarchy),
-- represented as a list of relative resource names. An ancestry path
-- starts with the closest ancestor in the hierarchy and ends at root.
-- Example: \`[\"projects\/123456789\", \"folders\/5432\",
-- \"organizations\/1234\"]\`
gcavraAncestors :: Lens' GoogleCloudAssetV1p7beta1RelatedAsset [Text]
gcavraAncestors
  = lens _gcavraAncestors
      (\ s a -> s{_gcavraAncestors = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudAssetV1p7beta1RelatedAsset
         where
        parseJSON
          = withObject "GoogleCloudAssetV1p7beta1RelatedAsset"
              (\ o ->
                 GoogleCloudAssetV1p7beta1RelatedAsset' <$>
                   (o .:? "asset") <*> (o .:? "assetType") <*>
                     (o .:? "ancestors" .!= mempty))

instance ToJSON GoogleCloudAssetV1p7beta1RelatedAsset
         where
        toJSON GoogleCloudAssetV1p7beta1RelatedAsset'{..}
          = object
              (catMaybes
                 [("asset" .=) <$> _gcavraAsset,
                  ("assetType" .=) <$> _gcavraAssetType,
                  ("ancestors" .=) <$> _gcavraAncestors])

-- | Defines the conditions under which an IngressPolicy matches a request.
-- Conditions are based on information about the ApiOperation intended to
-- be performed on the target resource of the request. The request must
-- satisfy what is defined in \`operations\` AND \`resources\` in order to
-- match.
--
-- /See:/ 'googleIdentityAccesscontextManagerV1IngressTo' smart constructor.
data GoogleIdentityAccesscontextManagerV1IngressTo =
  GoogleIdentityAccesscontextManagerV1IngressTo'
    { _giamvitResources :: !(Maybe [Text])
    , _giamvitOperations :: !(Maybe [GoogleIdentityAccesscontextManagerV1APIOperation])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleIdentityAccesscontextManagerV1IngressTo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giamvitResources'
--
-- * 'giamvitOperations'
googleIdentityAccesscontextManagerV1IngressTo
    :: GoogleIdentityAccesscontextManagerV1IngressTo
googleIdentityAccesscontextManagerV1IngressTo =
  GoogleIdentityAccesscontextManagerV1IngressTo'
    {_giamvitResources = Nothing, _giamvitOperations = Nothing}


-- | A list of resources, currently only projects in the form \`projects\/\`,
-- protected by this ServicePerimeter that are allowed to be accessed by
-- sources defined in the corresponding IngressFrom. If a single \`*\` is
-- specified, then access to all resources inside the perimeter are
-- allowed.
giamvitResources :: Lens' GoogleIdentityAccesscontextManagerV1IngressTo [Text]
giamvitResources
  = lens _giamvitResources
      (\ s a -> s{_giamvitResources = a})
      . _Default
      . _Coerce

-- | A list of ApiOperations allowed to be performed by the sources specified
-- in corresponding IngressFrom in this ServicePerimeter.
giamvitOperations :: Lens' GoogleIdentityAccesscontextManagerV1IngressTo [GoogleIdentityAccesscontextManagerV1APIOperation]
giamvitOperations
  = lens _giamvitOperations
      (\ s a -> s{_giamvitOperations = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleIdentityAccesscontextManagerV1IngressTo
         where
        parseJSON
          = withObject
              "GoogleIdentityAccesscontextManagerV1IngressTo"
              (\ o ->
                 GoogleIdentityAccesscontextManagerV1IngressTo' <$>
                   (o .:? "resources" .!= mempty) <*>
                     (o .:? "operations" .!= mempty))

instance ToJSON
           GoogleIdentityAccesscontextManagerV1IngressTo
         where
        toJSON
          GoogleIdentityAccesscontextManagerV1IngressTo'{..}
          = object
              (catMaybes
                 [("resources" .=) <$> _giamvitResources,
                  ("operations" .=) <$> _giamvitOperations])

-- | Specifications of BigQuery partitioned table as export destination.
--
-- /See:/ 'googleCloudAssetV1p7beta1PartitionSpec' smart constructor.
newtype GoogleCloudAssetV1p7beta1PartitionSpec =
  GoogleCloudAssetV1p7beta1PartitionSpec'
    { _gcavpsPartitionKey :: Maybe GoogleCloudAssetV1p7beta1PartitionSpecPartitionKey
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudAssetV1p7beta1PartitionSpec' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcavpsPartitionKey'
googleCloudAssetV1p7beta1PartitionSpec
    :: GoogleCloudAssetV1p7beta1PartitionSpec
googleCloudAssetV1p7beta1PartitionSpec =
  GoogleCloudAssetV1p7beta1PartitionSpec' {_gcavpsPartitionKey = Nothing}


-- | The partition key for BigQuery partitioned table.
gcavpsPartitionKey :: Lens' GoogleCloudAssetV1p7beta1PartitionSpec (Maybe GoogleCloudAssetV1p7beta1PartitionSpecPartitionKey)
gcavpsPartitionKey
  = lens _gcavpsPartitionKey
      (\ s a -> s{_gcavpsPartitionKey = a})

instance FromJSON
           GoogleCloudAssetV1p7beta1PartitionSpec
         where
        parseJSON
          = withObject "GoogleCloudAssetV1p7beta1PartitionSpec"
              (\ o ->
                 GoogleCloudAssetV1p7beta1PartitionSpec' <$>
                   (o .:? "partitionKey"))

instance ToJSON
           GoogleCloudAssetV1p7beta1PartitionSpec
         where
        toJSON GoogleCloudAssetV1p7beta1PartitionSpec'{..}
          = object
              (catMaybes
                 [("partitionKey" .=) <$> _gcavpsPartitionKey])

-- | \`AccessPolicy\` is a container for \`AccessLevels\` (which define the
-- necessary attributes to use Google Cloud services) and
-- \`ServicePerimeters\` (which define regions of services able to freely
-- pass data within a perimeter). An access policy is globally visible
-- within an organization, and the restrictions it specifies apply to all
-- projects within an organization.
--
-- /See:/ 'googleIdentityAccesscontextManagerV1AccessPolicy' smart constructor.
data GoogleIdentityAccesscontextManagerV1AccessPolicy =
  GoogleIdentityAccesscontextManagerV1AccessPolicy'
    { _giamvapParent :: !(Maybe Text)
    , _giamvapEtag :: !(Maybe Text)
    , _giamvapName :: !(Maybe Text)
    , _giamvapTitle :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleIdentityAccesscontextManagerV1AccessPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giamvapParent'
--
-- * 'giamvapEtag'
--
-- * 'giamvapName'
--
-- * 'giamvapTitle'
googleIdentityAccesscontextManagerV1AccessPolicy
    :: GoogleIdentityAccesscontextManagerV1AccessPolicy
googleIdentityAccesscontextManagerV1AccessPolicy =
  GoogleIdentityAccesscontextManagerV1AccessPolicy'
    { _giamvapParent = Nothing
    , _giamvapEtag = Nothing
    , _giamvapName = Nothing
    , _giamvapTitle = Nothing
    }


-- | Required. The parent of this \`AccessPolicy\` in the Cloud Resource
-- Hierarchy. Currently immutable once created. Format:
-- \`organizations\/{organization_id}\`
giamvapParent :: Lens' GoogleIdentityAccesscontextManagerV1AccessPolicy (Maybe Text)
giamvapParent
  = lens _giamvapParent
      (\ s a -> s{_giamvapParent = a})

-- | Output only. An opaque identifier for the current version of the
-- \`AccessPolicy\`. This will always be a strongly validated etag, meaning
-- that two Access Polices will be identical if and only if their etags are
-- identical. Clients should not expect this to be in any specific format.
giamvapEtag :: Lens' GoogleIdentityAccesscontextManagerV1AccessPolicy (Maybe Text)
giamvapEtag
  = lens _giamvapEtag (\ s a -> s{_giamvapEtag = a})

-- | Output only. Resource name of the \`AccessPolicy\`. Format:
-- \`accessPolicies\/{policy_id}\`
giamvapName :: Lens' GoogleIdentityAccesscontextManagerV1AccessPolicy (Maybe Text)
giamvapName
  = lens _giamvapName (\ s a -> s{_giamvapName = a})

-- | Required. Human readable title. Does not affect behavior.
giamvapTitle :: Lens' GoogleIdentityAccesscontextManagerV1AccessPolicy (Maybe Text)
giamvapTitle
  = lens _giamvapTitle (\ s a -> s{_giamvapTitle = a})

instance FromJSON
           GoogleIdentityAccesscontextManagerV1AccessPolicy
         where
        parseJSON
          = withObject
              "GoogleIdentityAccesscontextManagerV1AccessPolicy"
              (\ o ->
                 GoogleIdentityAccesscontextManagerV1AccessPolicy' <$>
                   (o .:? "parent") <*> (o .:? "etag") <*>
                     (o .:? "name")
                     <*> (o .:? "title"))

instance ToJSON
           GoogleIdentityAccesscontextManagerV1AccessPolicy
         where
        toJSON
          GoogleIdentityAccesscontextManagerV1AccessPolicy'{..}
          = object
              (catMaybes
                 [("parent" .=) <$> _giamvapParent,
                  ("etag" .=) <$> _giamvapEtag,
                  ("name" .=) <$> _giamvapName,
                  ("title" .=) <$> _giamvapTitle])

-- | Used in \`policy_type\` to specify how \`list_policy\` behaves at this
-- resource. \`ListPolicy\` can define specific values and subtrees of
-- Cloud Resource Manager resource hierarchy (\`Organizations\`,
-- \`Folders\`, \`Projects\`) that are allowed or denied by setting the
-- \`allowed_values\` and \`denied_values\` fields. This is achieved by
-- using the \`under:\` and optional \`is:\` prefixes. The \`under:\`
-- prefix is used to denote resource subtree values. The \`is:\` prefix is
-- used to denote specific values, and is required only if the value
-- contains a \":\". Values prefixed with \"is:\" are treated the same as
-- values with no prefix. Ancestry subtrees must be in one of the following
-- formats: - \"projects\/\", e.g. \"projects\/tokyo-rain-123\" -
-- \"folders\/\", e.g. \"folders\/1234\" - \"organizations\/\", e.g.
-- \"organizations\/1234\" The \`supports_under\` field of the associated
-- \`Constraint\` defines whether ancestry prefixes can be used. You can
-- set \`allowed_values\` and \`denied_values\` in the same \`Policy\` if
-- \`all_values\` is \`ALL_VALUES_UNSPECIFIED\`. \`ALLOW\` or \`DENY\` are
-- used to allow or deny all values. If \`all_values\` is set to either
-- \`ALLOW\` or \`DENY\`, \`allowed_values\` and \`denied_values\` must be
-- unset.
--
-- /See:/ 'googleCloudOrgpolicyV1ListPolicy' smart constructor.
data GoogleCloudOrgpolicyV1ListPolicy =
  GoogleCloudOrgpolicyV1ListPolicy'
    { _gcovlpInheritFromParent :: !(Maybe Bool)
    , _gcovlpAllValues :: !(Maybe GoogleCloudOrgpolicyV1ListPolicyAllValues)
    , _gcovlpDeniedValues :: !(Maybe [Text])
    , _gcovlpAllowedValues :: !(Maybe [Text])
    , _gcovlpSuggestedValue :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudOrgpolicyV1ListPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcovlpInheritFromParent'
--
-- * 'gcovlpAllValues'
--
-- * 'gcovlpDeniedValues'
--
-- * 'gcovlpAllowedValues'
--
-- * 'gcovlpSuggestedValue'
googleCloudOrgpolicyV1ListPolicy
    :: GoogleCloudOrgpolicyV1ListPolicy
googleCloudOrgpolicyV1ListPolicy =
  GoogleCloudOrgpolicyV1ListPolicy'
    { _gcovlpInheritFromParent = Nothing
    , _gcovlpAllValues = Nothing
    , _gcovlpDeniedValues = Nothing
    , _gcovlpAllowedValues = Nothing
    , _gcovlpSuggestedValue = Nothing
    }


-- | Determines the inheritance behavior for this \`Policy\`. By default, a
-- \`ListPolicy\` set at a resource supersedes any \`Policy\` set anywhere
-- up the resource hierarchy. However, if \`inherit_from_parent\` is set to
-- \`true\`, then the values from the effective \`Policy\` of the parent
-- resource are inherited, meaning the values set in this \`Policy\` are
-- added to the values inherited up the hierarchy. Setting \`Policy\`
-- hierarchies that inherit both allowed values and denied values isn\'t
-- recommended in most circumstances to keep the configuration simple and
-- understandable. However, it is possible to set a \`Policy\` with
-- \`allowed_values\` set that inherits a \`Policy\` with \`denied_values\`
-- set. In this case, the values that are allowed must be in
-- \`allowed_values\` and not present in \`denied_values\`. For example,
-- suppose you have a \`Constraint\` \`constraints\/serviceuser.services\`,
-- which has a \`constraint_type\` of \`list_constraint\`, and with
-- \`constraint_default\` set to \`ALLOW\`. Suppose that at the
-- Organization level, a \`Policy\` is applied that restricts the allowed
-- API activations to {\`E1\`, \`E2\`}. Then, if a \`Policy\` is applied to
-- a project below the Organization that has \`inherit_from_parent\` set to
-- \`false\` and field all_values set to DENY, then an attempt to activate
-- any API will be denied. The following examples demonstrate different
-- possible layerings for \`projects\/bar\` parented by
-- \`organizations\/foo\`: Example 1 (no inherited values):
-- \`organizations\/foo\` has a \`Policy\` with values: {allowed_values:
-- \"E1\" allowed_values:\"E2\"} \`projects\/bar\` has
-- \`inherit_from_parent\` \`false\` and values: {allowed_values: \"E3\"
-- allowed_values: \"E4\"} The accepted values at \`organizations\/foo\`
-- are \`E1\`, \`E2\`. The accepted values at \`projects\/bar\` are \`E3\`,
-- and \`E4\`. Example 2 (inherited values): \`organizations\/foo\` has a
-- \`Policy\` with values: {allowed_values: \"E1\" allowed_values:\"E2\"}
-- \`projects\/bar\` has a \`Policy\` with values: {value: \"E3\" value:
-- \"E4\" inherit_from_parent: true} The accepted values at
-- \`organizations\/foo\` are \`E1\`, \`E2\`. The accepted values at
-- \`projects\/bar\` are \`E1\`, \`E2\`, \`E3\`, and \`E4\`. Example 3
-- (inheriting both allowed and denied values): \`organizations\/foo\` has
-- a \`Policy\` with values: {allowed_values: \"E1\" allowed_values:
-- \"E2\"} \`projects\/bar\` has a \`Policy\` with: {denied_values: \"E1\"}
-- The accepted values at \`organizations\/foo\` are \`E1\`, \`E2\`. The
-- value accepted at \`projects\/bar\` is \`E2\`. Example 4
-- (RestoreDefault): \`organizations\/foo\` has a \`Policy\` with values:
-- {allowed_values: \"E1\" allowed_values:\"E2\"} \`projects\/bar\` has a
-- \`Policy\` with values: {RestoreDefault: {}} The accepted values at
-- \`organizations\/foo\` are \`E1\`, \`E2\`. The accepted values at
-- \`projects\/bar\` are either all or none depending on the value of
-- \`constraint_default\` (if \`ALLOW\`, all; if \`DENY\`, none). Example 5
-- (no policy inherits parent policy): \`organizations\/foo\` has no
-- \`Policy\` set. \`projects\/bar\` has no \`Policy\` set. The accepted
-- values at both levels are either all or none depending on the value of
-- \`constraint_default\` (if \`ALLOW\`, all; if \`DENY\`, none). Example 6
-- (ListConstraint allowing all): \`organizations\/foo\` has a \`Policy\`
-- with values: {allowed_values: \"E1\" allowed_values: \"E2\"}
-- \`projects\/bar\` has a \`Policy\` with: {all: ALLOW} The accepted
-- values at \`organizations\/foo\` are \`E1\`, E2\`. Any value is accepted
-- at \`projects\/bar\`. Example 7 (ListConstraint allowing none):
-- \`organizations\/foo\` has a \`Policy\` with values: {allowed_values:
-- \"E1\" allowed_values: \"E2\"} \`projects\/bar\` has a \`Policy\` with:
-- {all: DENY} The accepted values at \`organizations\/foo\` are \`E1\`,
-- E2\`. No value is accepted at \`projects\/bar\`. Example 10 (allowed and
-- denied subtrees of Resource Manager hierarchy): Given the following
-- resource hierarchy O1->{F1, F2}; F1->{P1}; F2->{P2, P3},
-- \`organizations\/foo\` has a \`Policy\` with values: {allowed_values:
-- \"under:organizations\/O1\"} \`projects\/bar\` has a \`Policy\` with:
-- {allowed_values: \"under:projects\/P3\"} {denied_values:
-- \"under:folders\/F2\"} The accepted values at \`organizations\/foo\` are
-- \`organizations\/O1\`, \`folders\/F1\`, \`folders\/F2\`,
-- \`projects\/P1\`, \`projects\/P2\`, \`projects\/P3\`. The accepted
-- values at \`projects\/bar\` are \`organizations\/O1\`, \`folders\/F1\`,
-- \`projects\/P1\`.
gcovlpInheritFromParent :: Lens' GoogleCloudOrgpolicyV1ListPolicy (Maybe Bool)
gcovlpInheritFromParent
  = lens _gcovlpInheritFromParent
      (\ s a -> s{_gcovlpInheritFromParent = a})

-- | The policy all_values state.
gcovlpAllValues :: Lens' GoogleCloudOrgpolicyV1ListPolicy (Maybe GoogleCloudOrgpolicyV1ListPolicyAllValues)
gcovlpAllValues
  = lens _gcovlpAllValues
      (\ s a -> s{_gcovlpAllValues = a})

-- | List of values denied at this resource. Can only be set if
-- \`all_values\` is set to \`ALL_VALUES_UNSPECIFIED\`.
gcovlpDeniedValues :: Lens' GoogleCloudOrgpolicyV1ListPolicy [Text]
gcovlpDeniedValues
  = lens _gcovlpDeniedValues
      (\ s a -> s{_gcovlpDeniedValues = a})
      . _Default
      . _Coerce

-- | List of values allowed at this resource. Can only be set if
-- \`all_values\` is set to \`ALL_VALUES_UNSPECIFIED\`.
gcovlpAllowedValues :: Lens' GoogleCloudOrgpolicyV1ListPolicy [Text]
gcovlpAllowedValues
  = lens _gcovlpAllowedValues
      (\ s a -> s{_gcovlpAllowedValues = a})
      . _Default
      . _Coerce

-- | Optional. The Google Cloud Console will try to default to a
-- configuration that matches the value specified in this \`Policy\`. If
-- \`suggested_value\` is not set, it will inherit the value specified
-- higher in the hierarchy, unless \`inherit_from_parent\` is \`false\`.
gcovlpSuggestedValue :: Lens' GoogleCloudOrgpolicyV1ListPolicy (Maybe Text)
gcovlpSuggestedValue
  = lens _gcovlpSuggestedValue
      (\ s a -> s{_gcovlpSuggestedValue = a})

instance FromJSON GoogleCloudOrgpolicyV1ListPolicy
         where
        parseJSON
          = withObject "GoogleCloudOrgpolicyV1ListPolicy"
              (\ o ->
                 GoogleCloudOrgpolicyV1ListPolicy' <$>
                   (o .:? "inheritFromParent") <*> (o .:? "allValues")
                     <*> (o .:? "deniedValues" .!= mempty)
                     <*> (o .:? "allowedValues" .!= mempty)
                     <*> (o .:? "suggestedValue"))

instance ToJSON GoogleCloudOrgpolicyV1ListPolicy
         where
        toJSON GoogleCloudOrgpolicyV1ListPolicy'{..}
          = object
              (catMaybes
                 [("inheritFromParent" .=) <$>
                    _gcovlpInheritFromParent,
                  ("allValues" .=) <$> _gcovlpAllValues,
                  ("deniedValues" .=) <$> _gcovlpDeniedValues,
                  ("allowedValues" .=) <$> _gcovlpAllowedValues,
                  ("suggestedValue" .=) <$> _gcovlpSuggestedValue])

-- | An allowed method or permission of a service specified in ApiOperation.
--
-- /See:/ 'googleIdentityAccesscontextManagerV1MethodSelector' smart constructor.
data GoogleIdentityAccesscontextManagerV1MethodSelector =
  GoogleIdentityAccesscontextManagerV1MethodSelector'
    { _giamvmsMethod :: !(Maybe Text)
    , _giamvmsPermission :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleIdentityAccesscontextManagerV1MethodSelector' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giamvmsMethod'
--
-- * 'giamvmsPermission'
googleIdentityAccesscontextManagerV1MethodSelector
    :: GoogleIdentityAccesscontextManagerV1MethodSelector
googleIdentityAccesscontextManagerV1MethodSelector =
  GoogleIdentityAccesscontextManagerV1MethodSelector'
    {_giamvmsMethod = Nothing, _giamvmsPermission = Nothing}


-- | Value for \`method\` should be a valid method name for the corresponding
-- \`service_name\` in ApiOperation. If \`*\` used as value for \`method\`,
-- then ALL methods and permissions are allowed.
giamvmsMethod :: Lens' GoogleIdentityAccesscontextManagerV1MethodSelector (Maybe Text)
giamvmsMethod
  = lens _giamvmsMethod
      (\ s a -> s{_giamvmsMethod = a})

-- | Value for \`permission\` should be a valid Cloud IAM permission for the
-- corresponding \`service_name\` in ApiOperation.
giamvmsPermission :: Lens' GoogleIdentityAccesscontextManagerV1MethodSelector (Maybe Text)
giamvmsPermission
  = lens _giamvmsPermission
      (\ s a -> s{_giamvmsPermission = a})

instance FromJSON
           GoogleIdentityAccesscontextManagerV1MethodSelector
         where
        parseJSON
          = withObject
              "GoogleIdentityAccesscontextManagerV1MethodSelector"
              (\ o ->
                 GoogleIdentityAccesscontextManagerV1MethodSelector'
                   <$> (o .:? "method") <*> (o .:? "permission"))

instance ToJSON
           GoogleIdentityAccesscontextManagerV1MethodSelector
         where
        toJSON
          GoogleIdentityAccesscontextManagerV1MethodSelector'{..}
          = object
              (catMaybes
                 [("method" .=) <$> _giamvmsMethod,
                  ("permission" .=) <$> _giamvmsPermission])

-- | Identification for an API Operation.
--
-- /See:/ 'googleIdentityAccesscontextManagerV1APIOperation' smart constructor.
data GoogleIdentityAccesscontextManagerV1APIOperation =
  GoogleIdentityAccesscontextManagerV1APIOperation'
    { _giamvaoMethodSelectors :: !(Maybe [GoogleIdentityAccesscontextManagerV1MethodSelector])
    , _giamvaoServiceName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleIdentityAccesscontextManagerV1APIOperation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giamvaoMethodSelectors'
--
-- * 'giamvaoServiceName'
googleIdentityAccesscontextManagerV1APIOperation
    :: GoogleIdentityAccesscontextManagerV1APIOperation
googleIdentityAccesscontextManagerV1APIOperation =
  GoogleIdentityAccesscontextManagerV1APIOperation'
    {_giamvaoMethodSelectors = Nothing, _giamvaoServiceName = Nothing}


-- | API methods or permissions to allow. Method or permission must belong to
-- the service specified by \`service_name\` field. A single MethodSelector
-- entry with \`*\` specified for the \`method\` field will allow all
-- methods AND permissions for the service specified in \`service_name\`.
giamvaoMethodSelectors :: Lens' GoogleIdentityAccesscontextManagerV1APIOperation [GoogleIdentityAccesscontextManagerV1MethodSelector]
giamvaoMethodSelectors
  = lens _giamvaoMethodSelectors
      (\ s a -> s{_giamvaoMethodSelectors = a})
      . _Default
      . _Coerce

-- | The name of the API whose methods or permissions the IngressPolicy or
-- EgressPolicy want to allow. A single ApiOperation with \`service_name\`
-- field set to \`*\` will allow all methods AND permissions for all
-- services.
giamvaoServiceName :: Lens' GoogleIdentityAccesscontextManagerV1APIOperation (Maybe Text)
giamvaoServiceName
  = lens _giamvaoServiceName
      (\ s a -> s{_giamvaoServiceName = a})

instance FromJSON
           GoogleIdentityAccesscontextManagerV1APIOperation
         where
        parseJSON
          = withObject
              "GoogleIdentityAccesscontextManagerV1APIOperation"
              (\ o ->
                 GoogleIdentityAccesscontextManagerV1APIOperation' <$>
                   (o .:? "methodSelectors" .!= mempty) <*>
                     (o .:? "serviceName"))

instance ToJSON
           GoogleIdentityAccesscontextManagerV1APIOperation
         where
        toJSON
          GoogleIdentityAccesscontextManagerV1APIOperation'{..}
          = object
              (catMaybes
                 [("methodSelectors" .=) <$> _giamvaoMethodSelectors,
                  ("serviceName" .=) <$> _giamvaoServiceName])

-- | \`CustomLevel\` is an \`AccessLevel\` using the Cloud Common Expression
-- Language to represent the necessary conditions for the level to apply to
-- a request. See CEL spec at: https:\/\/github.com\/google\/cel-spec
--
-- /See:/ 'googleIdentityAccesscontextManagerV1CustomLevel' smart constructor.
newtype GoogleIdentityAccesscontextManagerV1CustomLevel =
  GoogleIdentityAccesscontextManagerV1CustomLevel'
    { _giamvclExpr :: Maybe Expr
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleIdentityAccesscontextManagerV1CustomLevel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giamvclExpr'
googleIdentityAccesscontextManagerV1CustomLevel
    :: GoogleIdentityAccesscontextManagerV1CustomLevel
googleIdentityAccesscontextManagerV1CustomLevel =
  GoogleIdentityAccesscontextManagerV1CustomLevel' {_giamvclExpr = Nothing}


-- | Required. A Cloud CEL expression evaluating to a boolean.
giamvclExpr :: Lens' GoogleIdentityAccesscontextManagerV1CustomLevel (Maybe Expr)
giamvclExpr
  = lens _giamvclExpr (\ s a -> s{_giamvclExpr = a})

instance FromJSON
           GoogleIdentityAccesscontextManagerV1CustomLevel
         where
        parseJSON
          = withObject
              "GoogleIdentityAccesscontextManagerV1CustomLevel"
              (\ o ->
                 GoogleIdentityAccesscontextManagerV1CustomLevel' <$>
                   (o .:? "expr"))

instance ToJSON
           GoogleIdentityAccesscontextManagerV1CustomLevel
         where
        toJSON
          GoogleIdentityAccesscontextManagerV1CustomLevel'{..}
          = object (catMaybes [("expr" .=) <$> _giamvclExpr])

-- | Specifies how APIs are allowed to communicate within the Service
-- Perimeter.
--
-- /See:/ 'googleIdentityAccesscontextManagerV1VPCAccessibleServices' smart constructor.
data GoogleIdentityAccesscontextManagerV1VPCAccessibleServices =
  GoogleIdentityAccesscontextManagerV1VPCAccessibleServices'
    { _giamvvasAllowedServices :: !(Maybe [Text])
    , _giamvvasEnableRestriction :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleIdentityAccesscontextManagerV1VPCAccessibleServices' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giamvvasAllowedServices'
--
-- * 'giamvvasEnableRestriction'
googleIdentityAccesscontextManagerV1VPCAccessibleServices
    :: GoogleIdentityAccesscontextManagerV1VPCAccessibleServices
googleIdentityAccesscontextManagerV1VPCAccessibleServices =
  GoogleIdentityAccesscontextManagerV1VPCAccessibleServices'
    {_giamvvasAllowedServices = Nothing, _giamvvasEnableRestriction = Nothing}


-- | The list of APIs usable within the Service Perimeter. Must be empty
-- unless \'enable_restriction\' is True. You can specify a list of
-- individual services, as well as include the \'RESTRICTED-SERVICES\'
-- value, which automatically includes all of the services protected by the
-- perimeter.
giamvvasAllowedServices :: Lens' GoogleIdentityAccesscontextManagerV1VPCAccessibleServices [Text]
giamvvasAllowedServices
  = lens _giamvvasAllowedServices
      (\ s a -> s{_giamvvasAllowedServices = a})
      . _Default
      . _Coerce

-- | Whether to restrict API calls within the Service Perimeter to the list
-- of APIs specified in \'allowed_services\'.
giamvvasEnableRestriction :: Lens' GoogleIdentityAccesscontextManagerV1VPCAccessibleServices (Maybe Bool)
giamvvasEnableRestriction
  = lens _giamvvasEnableRestriction
      (\ s a -> s{_giamvvasEnableRestriction = a})

instance FromJSON
           GoogleIdentityAccesscontextManagerV1VPCAccessibleServices
         where
        parseJSON
          = withObject
              "GoogleIdentityAccesscontextManagerV1VPCAccessibleServices"
              (\ o ->
                 GoogleIdentityAccesscontextManagerV1VPCAccessibleServices'
                   <$>
                   (o .:? "allowedServices" .!= mempty) <*>
                     (o .:? "enableRestriction"))

instance ToJSON
           GoogleIdentityAccesscontextManagerV1VPCAccessibleServices
         where
        toJSON
          GoogleIdentityAccesscontextManagerV1VPCAccessibleServices'{..}
          = object
              (catMaybes
                 [("allowedServices" .=) <$> _giamvvasAllowedServices,
                  ("enableRestriction" .=) <$>
                    _giamvvasEnableRestriction])

-- | Defines a Cloud Organization \`Policy\` which is used to specify
-- \`Constraints\` for configurations of Cloud Platform resources.
--
-- /See:/ 'googleCloudOrgpolicyV1Policy' smart constructor.
data GoogleCloudOrgpolicyV1Policy =
  GoogleCloudOrgpolicyV1Policy'
    { _gcovpBooleanPolicy :: !(Maybe GoogleCloudOrgpolicyV1BooleanPolicy)
    , _gcovpEtag :: !(Maybe Bytes)
    , _gcovpRestoreDefault :: !(Maybe GoogleCloudOrgpolicyV1RestoreDefault)
    , _gcovpUpdateTime :: !(Maybe DateTime')
    , _gcovpVersion :: !(Maybe (Textual Int32))
    , _gcovpListPolicy :: !(Maybe GoogleCloudOrgpolicyV1ListPolicy)
    , _gcovpConstraint :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudOrgpolicyV1Policy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcovpBooleanPolicy'
--
-- * 'gcovpEtag'
--
-- * 'gcovpRestoreDefault'
--
-- * 'gcovpUpdateTime'
--
-- * 'gcovpVersion'
--
-- * 'gcovpListPolicy'
--
-- * 'gcovpConstraint'
googleCloudOrgpolicyV1Policy
    :: GoogleCloudOrgpolicyV1Policy
googleCloudOrgpolicyV1Policy =
  GoogleCloudOrgpolicyV1Policy'
    { _gcovpBooleanPolicy = Nothing
    , _gcovpEtag = Nothing
    , _gcovpRestoreDefault = Nothing
    , _gcovpUpdateTime = Nothing
    , _gcovpVersion = Nothing
    , _gcovpListPolicy = Nothing
    , _gcovpConstraint = Nothing
    }


-- | For boolean \`Constraints\`, whether to enforce the \`Constraint\` or
-- not.
gcovpBooleanPolicy :: Lens' GoogleCloudOrgpolicyV1Policy (Maybe GoogleCloudOrgpolicyV1BooleanPolicy)
gcovpBooleanPolicy
  = lens _gcovpBooleanPolicy
      (\ s a -> s{_gcovpBooleanPolicy = a})

-- | An opaque tag indicating the current version of the \`Policy\`, used for
-- concurrency control. When the \`Policy\` is returned from either a
-- \`GetPolicy\` or a \`ListOrgPolicy\` request, this \`etag\` indicates
-- the version of the current \`Policy\` to use when executing a
-- read-modify-write loop. When the \`Policy\` is returned from a
-- \`GetEffectivePolicy\` request, the \`etag\` will be unset. When the
-- \`Policy\` is used in a \`SetOrgPolicy\` method, use the \`etag\` value
-- that was returned from a \`GetOrgPolicy\` request as part of a
-- read-modify-write loop for concurrency control. Not setting the
-- \`etag\`in a \`SetOrgPolicy\` request will result in an unconditional
-- write of the \`Policy\`.
gcovpEtag :: Lens' GoogleCloudOrgpolicyV1Policy (Maybe ByteString)
gcovpEtag
  = lens _gcovpEtag (\ s a -> s{_gcovpEtag = a}) .
      mapping _Bytes

-- | Restores the default behavior of the constraint; independent of
-- \`Constraint\` type.
gcovpRestoreDefault :: Lens' GoogleCloudOrgpolicyV1Policy (Maybe GoogleCloudOrgpolicyV1RestoreDefault)
gcovpRestoreDefault
  = lens _gcovpRestoreDefault
      (\ s a -> s{_gcovpRestoreDefault = a})

-- | The time stamp the \`Policy\` was previously updated. This is set by the
-- server, not specified by the caller, and represents the last time a call
-- to \`SetOrgPolicy\` was made for that \`Policy\`. Any value set by the
-- client will be ignored.
gcovpUpdateTime :: Lens' GoogleCloudOrgpolicyV1Policy (Maybe UTCTime)
gcovpUpdateTime
  = lens _gcovpUpdateTime
      (\ s a -> s{_gcovpUpdateTime = a})
      . mapping _DateTime

-- | Version of the \`Policy\`. Default version is 0;
gcovpVersion :: Lens' GoogleCloudOrgpolicyV1Policy (Maybe Int32)
gcovpVersion
  = lens _gcovpVersion (\ s a -> s{_gcovpVersion = a})
      . mapping _Coerce

-- | List of values either allowed or disallowed.
gcovpListPolicy :: Lens' GoogleCloudOrgpolicyV1Policy (Maybe GoogleCloudOrgpolicyV1ListPolicy)
gcovpListPolicy
  = lens _gcovpListPolicy
      (\ s a -> s{_gcovpListPolicy = a})

-- | The name of the \`Constraint\` the \`Policy\` is configuring, for
-- example, \`constraints\/serviceuser.services\`. A [list of available
-- constraints](\/resource-manager\/docs\/organization-policy\/org-policy-constraints)
-- is available. Immutable after creation.
gcovpConstraint :: Lens' GoogleCloudOrgpolicyV1Policy (Maybe Text)
gcovpConstraint
  = lens _gcovpConstraint
      (\ s a -> s{_gcovpConstraint = a})

instance FromJSON GoogleCloudOrgpolicyV1Policy where
        parseJSON
          = withObject "GoogleCloudOrgpolicyV1Policy"
              (\ o ->
                 GoogleCloudOrgpolicyV1Policy' <$>
                   (o .:? "booleanPolicy") <*> (o .:? "etag") <*>
                     (o .:? "restoreDefault")
                     <*> (o .:? "updateTime")
                     <*> (o .:? "version")
                     <*> (o .:? "listPolicy")
                     <*> (o .:? "constraint"))

instance ToJSON GoogleCloudOrgpolicyV1Policy where
        toJSON GoogleCloudOrgpolicyV1Policy'{..}
          = object
              (catMaybes
                 [("booleanPolicy" .=) <$> _gcovpBooleanPolicy,
                  ("etag" .=) <$> _gcovpEtag,
                  ("restoreDefault" .=) <$> _gcovpRestoreDefault,
                  ("updateTime" .=) <$> _gcovpUpdateTime,
                  ("version" .=) <$> _gcovpVersion,
                  ("listPolicy" .=) <$> _gcovpListPolicy,
                  ("constraint" .=) <$> _gcovpConstraint])

-- | The relationship attributes which include \`type\`,
-- \`source_resource_type\`, \`target_resource_type\` and \`action\`.
--
-- /See:/ 'googleCloudAssetV1p7beta1RelationshipAttributes' smart constructor.
data GoogleCloudAssetV1p7beta1RelationshipAttributes =
  GoogleCloudAssetV1p7beta1RelationshipAttributes'
    { _gcavraAction :: !(Maybe Text)
    , _gcavraSourceResourceType :: !(Maybe Text)
    , _gcavraType :: !(Maybe Text)
    , _gcavraTargetResourceType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudAssetV1p7beta1RelationshipAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcavraAction'
--
-- * 'gcavraSourceResourceType'
--
-- * 'gcavraType'
--
-- * 'gcavraTargetResourceType'
googleCloudAssetV1p7beta1RelationshipAttributes
    :: GoogleCloudAssetV1p7beta1RelationshipAttributes
googleCloudAssetV1p7beta1RelationshipAttributes =
  GoogleCloudAssetV1p7beta1RelationshipAttributes'
    { _gcavraAction = Nothing
    , _gcavraSourceResourceType = Nothing
    , _gcavraType = Nothing
    , _gcavraTargetResourceType = Nothing
    }


-- | The detail of the relationship, e.g. \`contains\`, \`attaches\`
gcavraAction :: Lens' GoogleCloudAssetV1p7beta1RelationshipAttributes (Maybe Text)
gcavraAction
  = lens _gcavraAction (\ s a -> s{_gcavraAction = a})

-- | The source asset type. Example: \`compute.googleapis.com\/Instance\`
gcavraSourceResourceType :: Lens' GoogleCloudAssetV1p7beta1RelationshipAttributes (Maybe Text)
gcavraSourceResourceType
  = lens _gcavraSourceResourceType
      (\ s a -> s{_gcavraSourceResourceType = a})

-- | The unique identifier of the relationship type. Example:
-- \`INSTANCE_TO_INSTANCEGROUP\`
gcavraType :: Lens' GoogleCloudAssetV1p7beta1RelationshipAttributes (Maybe Text)
gcavraType
  = lens _gcavraType (\ s a -> s{_gcavraType = a})

-- | The target asset type. Example: \`compute.googleapis.com\/Disk\`
gcavraTargetResourceType :: Lens' GoogleCloudAssetV1p7beta1RelationshipAttributes (Maybe Text)
gcavraTargetResourceType
  = lens _gcavraTargetResourceType
      (\ s a -> s{_gcavraTargetResourceType = a})

instance FromJSON
           GoogleCloudAssetV1p7beta1RelationshipAttributes
         where
        parseJSON
          = withObject
              "GoogleCloudAssetV1p7beta1RelationshipAttributes"
              (\ o ->
                 GoogleCloudAssetV1p7beta1RelationshipAttributes' <$>
                   (o .:? "action") <*> (o .:? "sourceResourceType") <*>
                     (o .:? "type")
                     <*> (o .:? "targetResourceType"))

instance ToJSON
           GoogleCloudAssetV1p7beta1RelationshipAttributes
         where
        toJSON
          GoogleCloudAssetV1p7beta1RelationshipAttributes'{..}
          = object
              (catMaybes
                 [("action" .=) <$> _gcavraAction,
                  ("sourceResourceType" .=) <$>
                    _gcavraSourceResourceType,
                  ("type" .=) <$> _gcavraType,
                  ("targetResourceType" .=) <$>
                    _gcavraTargetResourceType])

-- | An Identity and Access Management (IAM) policy, which specifies access
-- controls for Google Cloud resources. A \`Policy\` is a collection of
-- \`bindings\`. A \`binding\` binds one or more \`members\` to a single
-- \`role\`. Members can be user accounts, service accounts, Google groups,
-- and domains (such as G Suite). A \`role\` is a named list of
-- permissions; each \`role\` can be an IAM predefined role or a
-- user-created custom role. For some types of Google Cloud resources, a
-- \`binding\` can also specify a \`condition\`, which is a logical
-- expression that allows access to a resource only if the expression
-- evaluates to \`true\`. A condition can add constraints based on
-- attributes of the request, the resource, or both. To learn which
-- resources support conditions in their IAM policies, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
-- **JSON example:** { \"bindings\": [ { \"role\":
-- \"roles\/resourcemanager.organizationAdmin\", \"members\": [
-- \"user:mike\'example.com\", \"group:admins\'example.com\",
-- \"domain:google.com\",
-- \"serviceAccount:my-project-id\'appspot.gserviceaccount.com\" ] }, {
-- \"role\": \"roles\/resourcemanager.organizationViewer\", \"members\": [
-- \"user:eve\'example.com\" ], \"condition\": { \"title\": \"expirable
-- access\", \"description\": \"Does not grant access after Sep 2020\",
-- \"expression\": \"request.time \<
-- timestamp(\'2020-10-01T00:00:00.000Z\')\", } } ], \"etag\":
-- \"BwWWja0YfJA=\", \"version\": 3 } **YAML example:** bindings: -
-- members: - user:mike\'example.com - group:admins\'example.com -
-- domain:google.com -
-- serviceAccount:my-project-id\'appspot.gserviceaccount.com role:
-- roles\/resourcemanager.organizationAdmin - members: -
-- user:eve\'example.com role: roles\/resourcemanager.organizationViewer
-- condition: title: expirable access description: Does not grant access
-- after Sep 2020 expression: request.time \<
-- timestamp(\'2020-10-01T00:00:00.000Z\') - etag: BwWWja0YfJA= - version:
-- 3 For a description of IAM and its features, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/docs\/).
--
-- /See:/ 'policy' smart constructor.
data Policy =
  Policy'
    { _pAuditConfigs :: !(Maybe [AuditConfig])
    , _pEtag :: !(Maybe Bytes)
    , _pVersion :: !(Maybe (Textual Int32))
    , _pBindings :: !(Maybe [Binding])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Policy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pAuditConfigs'
--
-- * 'pEtag'
--
-- * 'pVersion'
--
-- * 'pBindings'
policy
    :: Policy
policy =
  Policy'
    { _pAuditConfigs = Nothing
    , _pEtag = Nothing
    , _pVersion = Nothing
    , _pBindings = Nothing
    }


-- | Specifies cloud audit logging configuration for this policy.
pAuditConfigs :: Lens' Policy [AuditConfig]
pAuditConfigs
  = lens _pAuditConfigs
      (\ s a -> s{_pAuditConfigs = a})
      . _Default
      . _Coerce

-- | \`etag\` is used for optimistic concurrency control as a way to help
-- prevent simultaneous updates of a policy from overwriting each other. It
-- is strongly suggested that systems make use of the \`etag\` in the
-- read-modify-write cycle to perform policy updates in order to avoid race
-- conditions: An \`etag\` is returned in the response to \`getIamPolicy\`,
-- and systems are expected to put that etag in the request to
-- \`setIamPolicy\` to ensure that their change will be applied to the same
-- version of the policy. **Important:** If you use IAM Conditions, you
-- must include the \`etag\` field whenever you call \`setIamPolicy\`. If
-- you omit this field, then IAM allows you to overwrite a version \`3\`
-- policy with a version \`1\` policy, and all of the conditions in the
-- version \`3\` policy are lost.
pEtag :: Lens' Policy (Maybe ByteString)
pEtag
  = lens _pEtag (\ s a -> s{_pEtag = a}) .
      mapping _Bytes

-- | Specifies the format of the policy. Valid values are \`0\`, \`1\`, and
-- \`3\`. Requests that specify an invalid value are rejected. Any
-- operation that affects conditional role bindings must specify version
-- \`3\`. This requirement applies to the following operations: * Getting a
-- policy that includes a conditional role binding * Adding a conditional
-- role binding to a policy * Changing a conditional role binding in a
-- policy * Removing any role binding, with or without a condition, from a
-- policy that includes conditions **Important:** If you use IAM
-- Conditions, you must include the \`etag\` field whenever you call
-- \`setIamPolicy\`. If you omit this field, then IAM allows you to
-- overwrite a version \`3\` policy with a version \`1\` policy, and all of
-- the conditions in the version \`3\` policy are lost. If a policy does
-- not include any conditions, operations on that policy may specify any
-- valid version or leave the field unset. To learn which resources support
-- conditions in their IAM policies, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
pVersion :: Lens' Policy (Maybe Int32)
pVersion
  = lens _pVersion (\ s a -> s{_pVersion = a}) .
      mapping _Coerce

-- | Associates a list of \`members\` to a \`role\`. Optionally, may specify
-- a \`condition\` that determines how and when the \`bindings\` are
-- applied. Each of the \`bindings\` must contain at least one member.
pBindings :: Lens' Policy [Binding]
pBindings
  = lens _pBindings (\ s a -> s{_pBindings = a}) .
      _Default
      . _Coerce

instance FromJSON Policy where
        parseJSON
          = withObject "Policy"
              (\ o ->
                 Policy' <$>
                   (o .:? "auditConfigs" .!= mempty) <*> (o .:? "etag")
                     <*> (o .:? "version")
                     <*> (o .:? "bindings" .!= mempty))

instance ToJSON Policy where
        toJSON Policy'{..}
          = object
              (catMaybes
                 [("auditConfigs" .=) <$> _pAuditConfigs,
                  ("etag" .=) <$> _pEtag, ("version" .=) <$> _pVersion,
                  ("bindings" .=) <$> _pBindings])

-- | \`DevicePolicy\` specifies device specific restrictions necessary to
-- acquire a given access level. A \`DevicePolicy\` specifies requirements
-- for requests from devices to be granted access levels, it does not do
-- any enforcement on the device. \`DevicePolicy\` acts as an AND over all
-- specified fields, and each repeated field is an OR over its elements.
-- Any unset fields are ignored. For example, if the proto is { os_type :
-- DESKTOP_WINDOWS, os_type : DESKTOP_LINUX, encryption_status: ENCRYPTED},
-- then the DevicePolicy will be true for requests originating from
-- encrypted Linux desktops and encrypted Windows desktops.
--
-- /See:/ 'googleIdentityAccesscontextManagerV1DevicePolicy' smart constructor.
data GoogleIdentityAccesscontextManagerV1DevicePolicy =
  GoogleIdentityAccesscontextManagerV1DevicePolicy'
    { _giamvdpOSConstraints :: !(Maybe [GoogleIdentityAccesscontextManagerV1OSConstraint])
    , _giamvdpRequireAdminApproval :: !(Maybe Bool)
    , _giamvdpRequireCorpOwned :: !(Maybe Bool)
    , _giamvdpRequireScreenlock :: !(Maybe Bool)
    , _giamvdpAllowedEncryptionStatuses :: !(Maybe [GoogleIdentityAccesscontextManagerV1DevicePolicyAllowedEncryptionStatusesItem])
    , _giamvdpAllowedDeviceManagementLevels :: !(Maybe [GoogleIdentityAccesscontextManagerV1DevicePolicyAllowedDeviceManagementLevelsItem])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleIdentityAccesscontextManagerV1DevicePolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giamvdpOSConstraints'
--
-- * 'giamvdpRequireAdminApproval'
--
-- * 'giamvdpRequireCorpOwned'
--
-- * 'giamvdpRequireScreenlock'
--
-- * 'giamvdpAllowedEncryptionStatuses'
--
-- * 'giamvdpAllowedDeviceManagementLevels'
googleIdentityAccesscontextManagerV1DevicePolicy
    :: GoogleIdentityAccesscontextManagerV1DevicePolicy
googleIdentityAccesscontextManagerV1DevicePolicy =
  GoogleIdentityAccesscontextManagerV1DevicePolicy'
    { _giamvdpOSConstraints = Nothing
    , _giamvdpRequireAdminApproval = Nothing
    , _giamvdpRequireCorpOwned = Nothing
    , _giamvdpRequireScreenlock = Nothing
    , _giamvdpAllowedEncryptionStatuses = Nothing
    , _giamvdpAllowedDeviceManagementLevels = Nothing
    }


-- | Allowed OS versions, an empty list allows all types and all versions.
giamvdpOSConstraints :: Lens' GoogleIdentityAccesscontextManagerV1DevicePolicy [GoogleIdentityAccesscontextManagerV1OSConstraint]
giamvdpOSConstraints
  = lens _giamvdpOSConstraints
      (\ s a -> s{_giamvdpOSConstraints = a})
      . _Default
      . _Coerce

-- | Whether the device needs to be approved by the customer admin.
giamvdpRequireAdminApproval :: Lens' GoogleIdentityAccesscontextManagerV1DevicePolicy (Maybe Bool)
giamvdpRequireAdminApproval
  = lens _giamvdpRequireAdminApproval
      (\ s a -> s{_giamvdpRequireAdminApproval = a})

-- | Whether the device needs to be corp owned.
giamvdpRequireCorpOwned :: Lens' GoogleIdentityAccesscontextManagerV1DevicePolicy (Maybe Bool)
giamvdpRequireCorpOwned
  = lens _giamvdpRequireCorpOwned
      (\ s a -> s{_giamvdpRequireCorpOwned = a})

-- | Whether or not screenlock is required for the DevicePolicy to be true.
-- Defaults to \`false\`.
giamvdpRequireScreenlock :: Lens' GoogleIdentityAccesscontextManagerV1DevicePolicy (Maybe Bool)
giamvdpRequireScreenlock
  = lens _giamvdpRequireScreenlock
      (\ s a -> s{_giamvdpRequireScreenlock = a})

-- | Allowed encryptions statuses, an empty list allows all statuses.
giamvdpAllowedEncryptionStatuses :: Lens' GoogleIdentityAccesscontextManagerV1DevicePolicy [GoogleIdentityAccesscontextManagerV1DevicePolicyAllowedEncryptionStatusesItem]
giamvdpAllowedEncryptionStatuses
  = lens _giamvdpAllowedEncryptionStatuses
      (\ s a -> s{_giamvdpAllowedEncryptionStatuses = a})
      . _Default
      . _Coerce

-- | Allowed device management levels, an empty list allows all management
-- levels.
giamvdpAllowedDeviceManagementLevels :: Lens' GoogleIdentityAccesscontextManagerV1DevicePolicy [GoogleIdentityAccesscontextManagerV1DevicePolicyAllowedDeviceManagementLevelsItem]
giamvdpAllowedDeviceManagementLevels
  = lens _giamvdpAllowedDeviceManagementLevels
      (\ s a ->
         s{_giamvdpAllowedDeviceManagementLevels = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleIdentityAccesscontextManagerV1DevicePolicy
         where
        parseJSON
          = withObject
              "GoogleIdentityAccesscontextManagerV1DevicePolicy"
              (\ o ->
                 GoogleIdentityAccesscontextManagerV1DevicePolicy' <$>
                   (o .:? "osConstraints" .!= mempty) <*>
                     (o .:? "requireAdminApproval")
                     <*> (o .:? "requireCorpOwned")
                     <*> (o .:? "requireScreenlock")
                     <*> (o .:? "allowedEncryptionStatuses" .!= mempty)
                     <*>
                     (o .:? "allowedDeviceManagementLevels" .!= mempty))

instance ToJSON
           GoogleIdentityAccesscontextManagerV1DevicePolicy
         where
        toJSON
          GoogleIdentityAccesscontextManagerV1DevicePolicy'{..}
          = object
              (catMaybes
                 [("osConstraints" .=) <$> _giamvdpOSConstraints,
                  ("requireAdminApproval" .=) <$>
                    _giamvdpRequireAdminApproval,
                  ("requireCorpOwned" .=) <$> _giamvdpRequireCorpOwned,
                  ("requireScreenlock" .=) <$>
                    _giamvdpRequireScreenlock,
                  ("allowedEncryptionStatuses" .=) <$>
                    _giamvdpAllowedEncryptionStatuses,
                  ("allowedDeviceManagementLevels" .=) <$>
                    _giamvdpAllowedDeviceManagementLevels])

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
--
-- /See:/ 'operationMetadata' smart constructor.
newtype OperationMetadata =
  OperationMetadata'
    { _omAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'omAddtional'
operationMetadata
    :: HashMap Text JSONValue -- ^ 'omAddtional'
    -> OperationMetadata
operationMetadata pOmAddtional_ =
  OperationMetadata' {_omAddtional = _Coerce # pOmAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
omAddtional :: Lens' OperationMetadata (HashMap Text JSONValue)
omAddtional
  = lens _omAddtional (\ s a -> s{_omAddtional = a}) .
      _Coerce

instance FromJSON OperationMetadata where
        parseJSON
          = withObject "OperationMetadata"
              (\ o -> OperationMetadata' <$> (parseJSONObject o))

instance ToJSON OperationMetadata where
        toJSON = toJSON . _omAddtional

-- | Provides the configuration for logging a type of permissions. Example: {
-- \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\",
-- \"exempted_members\": [ \"user:jose\'example.com\" ] }, { \"log_type\":
-- \"DATA_WRITE\" } ] } This enables \'DATA_READ\' and \'DATA_WRITE\'
-- logging, while exempting jose\'example.com from DATA_READ logging.
--
-- /See:/ 'auditLogConfig' smart constructor.
data AuditLogConfig =
  AuditLogConfig'
    { _alcLogType :: !(Maybe AuditLogConfigLogType)
    , _alcExemptedMembers :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AuditLogConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alcLogType'
--
-- * 'alcExemptedMembers'
auditLogConfig
    :: AuditLogConfig
auditLogConfig =
  AuditLogConfig' {_alcLogType = Nothing, _alcExemptedMembers = Nothing}


-- | The log type that this config enables.
alcLogType :: Lens' AuditLogConfig (Maybe AuditLogConfigLogType)
alcLogType
  = lens _alcLogType (\ s a -> s{_alcLogType = a})

-- | Specifies the identities that do not cause logging for this type of
-- permission. Follows the same format of Binding.members.
alcExemptedMembers :: Lens' AuditLogConfig [Text]
alcExemptedMembers
  = lens _alcExemptedMembers
      (\ s a -> s{_alcExemptedMembers = a})
      . _Default
      . _Coerce

instance FromJSON AuditLogConfig where
        parseJSON
          = withObject "AuditLogConfig"
              (\ o ->
                 AuditLogConfig' <$>
                   (o .:? "logType") <*>
                     (o .:? "exemptedMembers" .!= mempty))

instance ToJSON AuditLogConfig where
        toJSON AuditLogConfig'{..}
          = object
              (catMaybes
                 [("logType" .=) <$> _alcLogType,
                  ("exemptedMembers" .=) <$> _alcExemptedMembers])

-- | An asset in Google Cloud. An asset can be any resource in the Google
-- Cloud [resource
-- hierarchy](https:\/\/cloud.google.com\/resource-manager\/docs\/cloud-platform-resource-hierarchy),
-- a resource outside the Google Cloud resource hierarchy (such as Google
-- Kubernetes Engine clusters and objects), or a policy (e.g. Cloud IAM
-- policy). See [Supported asset
-- types](https:\/\/cloud.google.com\/asset-inventory\/docs\/supported-asset-types)
-- for more information.
--
-- /See:/ 'googleCloudAssetV1p7beta1Asset' smart constructor.
data GoogleCloudAssetV1p7beta1Asset =
  GoogleCloudAssetV1p7beta1Asset'
    { _gcavaAccessLevel :: !(Maybe GoogleIdentityAccesscontextManagerV1AccessLevel)
    , _gcavaServicePerimeter :: !(Maybe GoogleIdentityAccesscontextManagerV1ServicePerimeter)
    , _gcavaRelatedAssets :: !(Maybe GoogleCloudAssetV1p7beta1RelatedAssets)
    , _gcavaUpdateTime :: !(Maybe DateTime')
    , _gcavaAccessPolicy :: !(Maybe GoogleIdentityAccesscontextManagerV1AccessPolicy)
    , _gcavaName :: !(Maybe Text)
    , _gcavaResource :: !(Maybe GoogleCloudAssetV1p7beta1Resource)
    , _gcavaOrgPolicy :: !(Maybe [GoogleCloudOrgpolicyV1Policy])
    , _gcavaIAMPolicy :: !(Maybe Policy)
    , _gcavaAssetType :: !(Maybe Text)
    , _gcavaAncestors :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudAssetV1p7beta1Asset' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcavaAccessLevel'
--
-- * 'gcavaServicePerimeter'
--
-- * 'gcavaRelatedAssets'
--
-- * 'gcavaUpdateTime'
--
-- * 'gcavaAccessPolicy'
--
-- * 'gcavaName'
--
-- * 'gcavaResource'
--
-- * 'gcavaOrgPolicy'
--
-- * 'gcavaIAMPolicy'
--
-- * 'gcavaAssetType'
--
-- * 'gcavaAncestors'
googleCloudAssetV1p7beta1Asset
    :: GoogleCloudAssetV1p7beta1Asset
googleCloudAssetV1p7beta1Asset =
  GoogleCloudAssetV1p7beta1Asset'
    { _gcavaAccessLevel = Nothing
    , _gcavaServicePerimeter = Nothing
    , _gcavaRelatedAssets = Nothing
    , _gcavaUpdateTime = Nothing
    , _gcavaAccessPolicy = Nothing
    , _gcavaName = Nothing
    , _gcavaResource = Nothing
    , _gcavaOrgPolicy = Nothing
    , _gcavaIAMPolicy = Nothing
    , _gcavaAssetType = Nothing
    , _gcavaAncestors = Nothing
    }


-- | Please also refer to the [access level user
-- guide](https:\/\/cloud.google.com\/access-context-manager\/docs\/overview#access-levels).
gcavaAccessLevel :: Lens' GoogleCloudAssetV1p7beta1Asset (Maybe GoogleIdentityAccesscontextManagerV1AccessLevel)
gcavaAccessLevel
  = lens _gcavaAccessLevel
      (\ s a -> s{_gcavaAccessLevel = a})

-- | Please also refer to the [service perimeter user
-- guide](https:\/\/cloud.google.com\/vpc-service-controls\/docs\/overview).
gcavaServicePerimeter :: Lens' GoogleCloudAssetV1p7beta1Asset (Maybe GoogleIdentityAccesscontextManagerV1ServicePerimeter)
gcavaServicePerimeter
  = lens _gcavaServicePerimeter
      (\ s a -> s{_gcavaServicePerimeter = a})

-- | The related assets of the asset of one relationship type. One asset only
-- represents one type of relationship.
gcavaRelatedAssets :: Lens' GoogleCloudAssetV1p7beta1Asset (Maybe GoogleCloudAssetV1p7beta1RelatedAssets)
gcavaRelatedAssets
  = lens _gcavaRelatedAssets
      (\ s a -> s{_gcavaRelatedAssets = a})

-- | The last update timestamp of an asset. update_time is updated when
-- create\/update\/delete operation is performed.
gcavaUpdateTime :: Lens' GoogleCloudAssetV1p7beta1Asset (Maybe UTCTime)
gcavaUpdateTime
  = lens _gcavaUpdateTime
      (\ s a -> s{_gcavaUpdateTime = a})
      . mapping _DateTime

-- | Please also refer to the [access policy user
-- guide](https:\/\/cloud.google.com\/access-context-manager\/docs\/overview#access-policies).
gcavaAccessPolicy :: Lens' GoogleCloudAssetV1p7beta1Asset (Maybe GoogleIdentityAccesscontextManagerV1AccessPolicy)
gcavaAccessPolicy
  = lens _gcavaAccessPolicy
      (\ s a -> s{_gcavaAccessPolicy = a})

-- | The full name of the asset. Example:
-- \`\/\/compute.googleapis.com\/projects\/my_project_123\/zones\/zone1\/instances\/instance1\`
-- See [Resource
-- names](https:\/\/cloud.google.com\/apis\/design\/resource_names#full_resource_name)
-- for more information.
gcavaName :: Lens' GoogleCloudAssetV1p7beta1Asset (Maybe Text)
gcavaName
  = lens _gcavaName (\ s a -> s{_gcavaName = a})

-- | A representation of the resource.
gcavaResource :: Lens' GoogleCloudAssetV1p7beta1Asset (Maybe GoogleCloudAssetV1p7beta1Resource)
gcavaResource
  = lens _gcavaResource
      (\ s a -> s{_gcavaResource = a})

-- | A representation of an [organization
-- policy](https:\/\/cloud.google.com\/resource-manager\/docs\/organization-policy\/overview#organization_policy).
-- There can be more than one organization policy with different
-- constraints set on a given resource.
gcavaOrgPolicy :: Lens' GoogleCloudAssetV1p7beta1Asset [GoogleCloudOrgpolicyV1Policy]
gcavaOrgPolicy
  = lens _gcavaOrgPolicy
      (\ s a -> s{_gcavaOrgPolicy = a})
      . _Default
      . _Coerce

-- | A representation of the Cloud IAM policy set on a Google Cloud resource.
-- There can be a maximum of one Cloud IAM policy set on any given
-- resource. In addition, Cloud IAM policies inherit their granted access
-- scope from any policies set on parent resources in the resource
-- hierarchy. Therefore, the effectively policy is the union of both the
-- policy set on this resource and each policy set on all of the
-- resource\'s ancestry resource levels in the hierarchy. See [this
-- topic](https:\/\/cloud.google.com\/iam\/docs\/policies#inheritance) for
-- more information.
gcavaIAMPolicy :: Lens' GoogleCloudAssetV1p7beta1Asset (Maybe Policy)
gcavaIAMPolicy
  = lens _gcavaIAMPolicy
      (\ s a -> s{_gcavaIAMPolicy = a})

-- | The type of the asset. Example: \`compute.googleapis.com\/Disk\` See
-- [Supported asset
-- types](https:\/\/cloud.google.com\/asset-inventory\/docs\/supported-asset-types)
-- for more information.
gcavaAssetType :: Lens' GoogleCloudAssetV1p7beta1Asset (Maybe Text)
gcavaAssetType
  = lens _gcavaAssetType
      (\ s a -> s{_gcavaAssetType = a})

-- | The ancestry path of an asset in Google Cloud [resource
-- hierarchy](https:\/\/cloud.google.com\/resource-manager\/docs\/cloud-platform-resource-hierarchy),
-- represented as a list of relative resource names. An ancestry path
-- starts with the closest ancestor in the hierarchy and ends at root. If
-- the asset is a project, folder, or organization, the ancestry path
-- starts from the asset itself. Example: \`[\"projects\/123456789\",
-- \"folders\/5432\", \"organizations\/1234\"]\`
gcavaAncestors :: Lens' GoogleCloudAssetV1p7beta1Asset [Text]
gcavaAncestors
  = lens _gcavaAncestors
      (\ s a -> s{_gcavaAncestors = a})
      . _Default
      . _Coerce

instance FromJSON GoogleCloudAssetV1p7beta1Asset
         where
        parseJSON
          = withObject "GoogleCloudAssetV1p7beta1Asset"
              (\ o ->
                 GoogleCloudAssetV1p7beta1Asset' <$>
                   (o .:? "accessLevel") <*> (o .:? "servicePerimeter")
                     <*> (o .:? "relatedAssets")
                     <*> (o .:? "updateTime")
                     <*> (o .:? "accessPolicy")
                     <*> (o .:? "name")
                     <*> (o .:? "resource")
                     <*> (o .:? "orgPolicy" .!= mempty)
                     <*> (o .:? "iamPolicy")
                     <*> (o .:? "assetType")
                     <*> (o .:? "ancestors" .!= mempty))

instance ToJSON GoogleCloudAssetV1p7beta1Asset where
        toJSON GoogleCloudAssetV1p7beta1Asset'{..}
          = object
              (catMaybes
                 [("accessLevel" .=) <$> _gcavaAccessLevel,
                  ("servicePerimeter" .=) <$> _gcavaServicePerimeter,
                  ("relatedAssets" .=) <$> _gcavaRelatedAssets,
                  ("updateTime" .=) <$> _gcavaUpdateTime,
                  ("accessPolicy" .=) <$> _gcavaAccessPolicy,
                  ("name" .=) <$> _gcavaName,
                  ("resource" .=) <$> _gcavaResource,
                  ("orgPolicy" .=) <$> _gcavaOrgPolicy,
                  ("iamPolicy" .=) <$> _gcavaIAMPolicy,
                  ("assetType" .=) <$> _gcavaAssetType,
                  ("ancestors" .=) <$> _gcavaAncestors])

-- | A condition necessary for an \`AccessLevel\` to be granted. The
-- Condition is an AND over its fields. So a Condition is true if: 1) the
-- request IP is from one of the listed subnetworks AND 2) the originating
-- device complies with the listed device policy AND 3) all listed access
-- levels are granted AND 4) the request was sent at a time allowed by the
-- DateTimeRestriction.
--
-- /See:/ 'googleIdentityAccesscontextManagerV1Condition' smart constructor.
data GoogleIdentityAccesscontextManagerV1Condition =
  GoogleIdentityAccesscontextManagerV1Condition'
    { _giamvcMembers :: !(Maybe [Text])
    , _giamvcRegions :: !(Maybe [Text])
    , _giamvcNegate :: !(Maybe Bool)
    , _giamvcIPSubnetworks :: !(Maybe [Text])
    , _giamvcDevicePolicy :: !(Maybe GoogleIdentityAccesscontextManagerV1DevicePolicy)
    , _giamvcRequiredAccessLevels :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleIdentityAccesscontextManagerV1Condition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giamvcMembers'
--
-- * 'giamvcRegions'
--
-- * 'giamvcNegate'
--
-- * 'giamvcIPSubnetworks'
--
-- * 'giamvcDevicePolicy'
--
-- * 'giamvcRequiredAccessLevels'
googleIdentityAccesscontextManagerV1Condition
    :: GoogleIdentityAccesscontextManagerV1Condition
googleIdentityAccesscontextManagerV1Condition =
  GoogleIdentityAccesscontextManagerV1Condition'
    { _giamvcMembers = Nothing
    , _giamvcRegions = Nothing
    , _giamvcNegate = Nothing
    , _giamvcIPSubnetworks = Nothing
    , _giamvcDevicePolicy = Nothing
    , _giamvcRequiredAccessLevels = Nothing
    }


-- | The request must be made by one of the provided user or service
-- accounts. Groups are not supported. Syntax: \`user:{emailid}\`
-- \`serviceAccount:{emailid}\` If not specified, a request may come from
-- any user.
giamvcMembers :: Lens' GoogleIdentityAccesscontextManagerV1Condition [Text]
giamvcMembers
  = lens _giamvcMembers
      (\ s a -> s{_giamvcMembers = a})
      . _Default
      . _Coerce

-- | The request must originate from one of the provided countries\/regions.
-- Must be valid ISO 3166-1 alpha-2 codes.
giamvcRegions :: Lens' GoogleIdentityAccesscontextManagerV1Condition [Text]
giamvcRegions
  = lens _giamvcRegions
      (\ s a -> s{_giamvcRegions = a})
      . _Default
      . _Coerce

-- | Whether to negate the Condition. If true, the Condition becomes a NAND
-- over its non-empty fields, each field must be false for the Condition
-- overall to be satisfied. Defaults to false.
giamvcNegate :: Lens' GoogleIdentityAccesscontextManagerV1Condition (Maybe Bool)
giamvcNegate
  = lens _giamvcNegate (\ s a -> s{_giamvcNegate = a})

-- | CIDR block IP subnetwork specification. May be IPv4 or IPv6. Note that
-- for a CIDR IP address block, the specified IP address portion must be
-- properly truncated (i.e. all the host bits must be zero) or the input is
-- considered malformed. For example, \"192.0.2.0\/24\" is accepted but
-- \"192.0.2.1\/24\" is not. Similarly, for IPv6, \"2001:db8::\/32\" is
-- accepted whereas \"2001:db8::1\/32\" is not. The originating IP of a
-- request must be in one of the listed subnets in order for this Condition
-- to be true. If empty, all IP addresses are allowed.
giamvcIPSubnetworks :: Lens' GoogleIdentityAccesscontextManagerV1Condition [Text]
giamvcIPSubnetworks
  = lens _giamvcIPSubnetworks
      (\ s a -> s{_giamvcIPSubnetworks = a})
      . _Default
      . _Coerce

-- | Device specific restrictions, all restrictions must hold for the
-- Condition to be true. If not specified, all devices are allowed.
giamvcDevicePolicy :: Lens' GoogleIdentityAccesscontextManagerV1Condition (Maybe GoogleIdentityAccesscontextManagerV1DevicePolicy)
giamvcDevicePolicy
  = lens _giamvcDevicePolicy
      (\ s a -> s{_giamvcDevicePolicy = a})

-- | A list of other access levels defined in the same \`Policy\`, referenced
-- by resource name. Referencing an \`AccessLevel\` which does not exist is
-- an error. All access levels listed must be granted for the Condition to
-- be true. Example:
-- \"\`accessPolicies\/MY_POLICY\/accessLevels\/LEVEL_NAME\"\`
giamvcRequiredAccessLevels :: Lens' GoogleIdentityAccesscontextManagerV1Condition [Text]
giamvcRequiredAccessLevels
  = lens _giamvcRequiredAccessLevels
      (\ s a -> s{_giamvcRequiredAccessLevels = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleIdentityAccesscontextManagerV1Condition
         where
        parseJSON
          = withObject
              "GoogleIdentityAccesscontextManagerV1Condition"
              (\ o ->
                 GoogleIdentityAccesscontextManagerV1Condition' <$>
                   (o .:? "members" .!= mempty) <*>
                     (o .:? "regions" .!= mempty)
                     <*> (o .:? "negate")
                     <*> (o .:? "ipSubnetworks" .!= mempty)
                     <*> (o .:? "devicePolicy")
                     <*> (o .:? "requiredAccessLevels" .!= mempty))

instance ToJSON
           GoogleIdentityAccesscontextManagerV1Condition
         where
        toJSON
          GoogleIdentityAccesscontextManagerV1Condition'{..}
          = object
              (catMaybes
                 [("members" .=) <$> _giamvcMembers,
                  ("regions" .=) <$> _giamvcRegions,
                  ("negate" .=) <$> _giamvcNegate,
                  ("ipSubnetworks" .=) <$> _giamvcIPSubnetworks,
                  ("devicePolicy" .=) <$> _giamvcDevicePolicy,
                  ("requiredAccessLevels" .=) <$>
                    _giamvcRequiredAccessLevels])

-- | Ignores policies set above this resource and restores the
-- \`constraint_default\` enforcement behavior of the specific
-- \`Constraint\` at this resource. Suppose that \`constraint_default\` is
-- set to \`ALLOW\` for the \`Constraint\`
-- \`constraints\/serviceuser.services\`. Suppose that organization foo.com
-- sets a \`Policy\` at their Organization resource node that restricts the
-- allowed service activations to deny all service activations. They could
-- then set a \`Policy\` with the \`policy_type\` \`restore_default\` on
-- several experimental projects, restoring the \`constraint_default\`
-- enforcement of the \`Constraint\` for only those projects, allowing
-- those projects to have all services activated.
--
-- /See:/ 'googleCloudOrgpolicyV1RestoreDefault' smart constructor.
data GoogleCloudOrgpolicyV1RestoreDefault =
  GoogleCloudOrgpolicyV1RestoreDefault'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudOrgpolicyV1RestoreDefault' with the minimum fields required to make a request.
--
googleCloudOrgpolicyV1RestoreDefault
    :: GoogleCloudOrgpolicyV1RestoreDefault
googleCloudOrgpolicyV1RestoreDefault = GoogleCloudOrgpolicyV1RestoreDefault'


instance FromJSON
           GoogleCloudOrgpolicyV1RestoreDefault
         where
        parseJSON
          = withObject "GoogleCloudOrgpolicyV1RestoreDefault"
              (\ o -> pure GoogleCloudOrgpolicyV1RestoreDefault')

instance ToJSON GoogleCloudOrgpolicyV1RestoreDefault
         where
        toJSON = const emptyObject

-- | The normal response of the operation in case of success. If the original
-- method returns no data on success, such as \`Delete\`, the response is
-- \`google.protobuf.Empty\`. If the original method is standard
-- \`Get\`\/\`Create\`\/\`Update\`, the response should be the resource.
-- For other methods, the response should have the type \`XxxResponse\`,
-- where \`Xxx\` is the original method name. For example, if the original
-- method name is \`TakeSnapshot()\`, the inferred response type is
-- \`TakeSnapshotResponse\`.
--
-- /See:/ 'operationResponse' smart constructor.
newtype OperationResponse =
  OperationResponse'
    { _orAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orAddtional'
operationResponse
    :: HashMap Text JSONValue -- ^ 'orAddtional'
    -> OperationResponse
operationResponse pOrAddtional_ =
  OperationResponse' {_orAddtional = _Coerce # pOrAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
orAddtional :: Lens' OperationResponse (HashMap Text JSONValue)
orAddtional
  = lens _orAddtional (\ s a -> s{_orAddtional = a}) .
      _Coerce

instance FromJSON OperationResponse where
        parseJSON
          = withObject "OperationResponse"
              (\ o -> OperationResponse' <$> (parseJSONObject o))

instance ToJSON OperationResponse where
        toJSON = toJSON . _orAddtional

-- | Used in \`policy_type\` to specify how \`boolean_policy\` will behave at
-- this resource.
--
-- /See:/ 'googleCloudOrgpolicyV1BooleanPolicy' smart constructor.
newtype GoogleCloudOrgpolicyV1BooleanPolicy =
  GoogleCloudOrgpolicyV1BooleanPolicy'
    { _gcovbpEnforced :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudOrgpolicyV1BooleanPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcovbpEnforced'
googleCloudOrgpolicyV1BooleanPolicy
    :: GoogleCloudOrgpolicyV1BooleanPolicy
googleCloudOrgpolicyV1BooleanPolicy =
  GoogleCloudOrgpolicyV1BooleanPolicy' {_gcovbpEnforced = Nothing}


-- | If \`true\`, then the \`Policy\` is enforced. If \`false\`, then any
-- configuration is acceptable. Suppose you have a \`Constraint\`
-- \`constraints\/compute.disableSerialPortAccess\` with
-- \`constraint_default\` set to \`ALLOW\`. A \`Policy\` for that
-- \`Constraint\` exhibits the following behavior: - If the \`Policy\` at
-- this resource has enforced set to \`false\`, serial port connection
-- attempts will be allowed. - If the \`Policy\` at this resource has
-- enforced set to \`true\`, serial port connection attempts will be
-- refused. - If the \`Policy\` at this resource is \`RestoreDefault\`,
-- serial port connection attempts will be allowed. - If no \`Policy\` is
-- set at this resource or anywhere higher in the resource hierarchy,
-- serial port connection attempts will be allowed. - If no \`Policy\` is
-- set at this resource, but one exists higher in the resource hierarchy,
-- the behavior is as if the\`Policy\` were set at this resource. The
-- following examples demonstrate the different possible layerings: Example
-- 1 (nearest \`Constraint\` wins): \`organizations\/foo\` has a \`Policy\`
-- with: {enforced: false} \`projects\/bar\` has no \`Policy\` set. The
-- constraint at \`projects\/bar\` and \`organizations\/foo\` will not be
-- enforced. Example 2 (enforcement gets replaced): \`organizations\/foo\`
-- has a \`Policy\` with: {enforced: false} \`projects\/bar\` has a
-- \`Policy\` with: {enforced: true} The constraint at
-- \`organizations\/foo\` is not enforced. The constraint at
-- \`projects\/bar\` is enforced. Example 3 (RestoreDefault):
-- \`organizations\/foo\` has a \`Policy\` with: {enforced: true}
-- \`projects\/bar\` has a \`Policy\` with: {RestoreDefault: {}} The
-- constraint at \`organizations\/foo\` is enforced. The constraint at
-- \`projects\/bar\` is not enforced, because \`constraint_default\` for
-- the \`Constraint\` is \`ALLOW\`.
gcovbpEnforced :: Lens' GoogleCloudOrgpolicyV1BooleanPolicy (Maybe Bool)
gcovbpEnforced
  = lens _gcovbpEnforced
      (\ s a -> s{_gcovbpEnforced = a})

instance FromJSON GoogleCloudOrgpolicyV1BooleanPolicy
         where
        parseJSON
          = withObject "GoogleCloudOrgpolicyV1BooleanPolicy"
              (\ o ->
                 GoogleCloudOrgpolicyV1BooleanPolicy' <$>
                   (o .:? "enforced"))

instance ToJSON GoogleCloudOrgpolicyV1BooleanPolicy
         where
        toJSON GoogleCloudOrgpolicyV1BooleanPolicy'{..}
          = object
              (catMaybes [("enforced" .=) <$> _gcovbpEnforced])

-- | Associates \`members\` with a \`role\`.
--
-- /See:/ 'binding' smart constructor.
data Binding =
  Binding'
    { _bMembers :: !(Maybe [Text])
    , _bRole :: !(Maybe Text)
    , _bCondition :: !(Maybe Expr)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Binding' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bMembers'
--
-- * 'bRole'
--
-- * 'bCondition'
binding
    :: Binding
binding =
  Binding' {_bMembers = Nothing, _bRole = Nothing, _bCondition = Nothing}


-- | Specifies the identities requesting access for a Cloud Platform
-- resource. \`members\` can have the following values: * \`allUsers\`: A
-- special identifier that represents anyone who is on the internet; with
-- or without a Google account. * \`allAuthenticatedUsers\`: A special
-- identifier that represents anyone who is authenticated with a Google
-- account or a service account. * \`user:{emailid}\`: An email address
-- that represents a specific Google account. For example,
-- \`alice\'example.com\` . * \`serviceAccount:{emailid}\`: An email
-- address that represents a service account. For example,
-- \`my-other-app\'appspot.gserviceaccount.com\`. * \`group:{emailid}\`: An
-- email address that represents a Google group. For example,
-- \`admins\'example.com\`. * \`deleted:user:{emailid}?uid={uniqueid}\`: An
-- email address (plus unique identifier) representing a user that has been
-- recently deleted. For example,
-- \`alice\'example.com?uid=123456789012345678901\`. If the user is
-- recovered, this value reverts to \`user:{emailid}\` and the recovered
-- user retains the role in the binding. *
-- \`deleted:serviceAccount:{emailid}?uid={uniqueid}\`: An email address
-- (plus unique identifier) representing a service account that has been
-- recently deleted. For example,
-- \`my-other-app\'appspot.gserviceaccount.com?uid=123456789012345678901\`.
-- If the service account is undeleted, this value reverts to
-- \`serviceAccount:{emailid}\` and the undeleted service account retains
-- the role in the binding. * \`deleted:group:{emailid}?uid={uniqueid}\`:
-- An email address (plus unique identifier) representing a Google group
-- that has been recently deleted. For example,
-- \`admins\'example.com?uid=123456789012345678901\`. If the group is
-- recovered, this value reverts to \`group:{emailid}\` and the recovered
-- group retains the role in the binding. * \`domain:{domain}\`: The G
-- Suite domain (primary) that represents all the users of that domain. For
-- example, \`google.com\` or \`example.com\`.
bMembers :: Lens' Binding [Text]
bMembers
  = lens _bMembers (\ s a -> s{_bMembers = a}) .
      _Default
      . _Coerce

-- | Role that is assigned to \`members\`. For example, \`roles\/viewer\`,
-- \`roles\/editor\`, or \`roles\/owner\`.
bRole :: Lens' Binding (Maybe Text)
bRole = lens _bRole (\ s a -> s{_bRole = a})

-- | The condition that is associated with this binding. If the condition
-- evaluates to \`true\`, then this binding applies to the current request.
-- If the condition evaluates to \`false\`, then this binding does not
-- apply to the current request. However, a different role binding might
-- grant the same role to one or more of the members in this binding. To
-- learn which resources support conditions in their IAM policies, see the
-- [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
bCondition :: Lens' Binding (Maybe Expr)
bCondition
  = lens _bCondition (\ s a -> s{_bCondition = a})

instance FromJSON Binding where
        parseJSON
          = withObject "Binding"
              (\ o ->
                 Binding' <$>
                   (o .:? "members" .!= mempty) <*> (o .:? "role") <*>
                     (o .:? "condition"))

instance ToJSON Binding where
        toJSON Binding'{..}
          = object
              (catMaybes
                 [("members" .=) <$> _bMembers,
                  ("role" .=) <$> _bRole,
                  ("condition" .=) <$> _bCondition])

-- | The content of the resource, in which some sensitive fields are removed
-- and may not be present.
--
-- /See:/ 'googleCloudAssetV1p7beta1ResourceData' smart constructor.
newtype GoogleCloudAssetV1p7beta1ResourceData =
  GoogleCloudAssetV1p7beta1ResourceData'
    { _gcavrdAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudAssetV1p7beta1ResourceData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcavrdAddtional'
googleCloudAssetV1p7beta1ResourceData
    :: HashMap Text JSONValue -- ^ 'gcavrdAddtional'
    -> GoogleCloudAssetV1p7beta1ResourceData
googleCloudAssetV1p7beta1ResourceData pGcavrdAddtional_ =
  GoogleCloudAssetV1p7beta1ResourceData'
    {_gcavrdAddtional = _Coerce # pGcavrdAddtional_}


-- | Properties of the object.
gcavrdAddtional :: Lens' GoogleCloudAssetV1p7beta1ResourceData (HashMap Text JSONValue)
gcavrdAddtional
  = lens _gcavrdAddtional
      (\ s a -> s{_gcavrdAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudAssetV1p7beta1ResourceData
         where
        parseJSON
          = withObject "GoogleCloudAssetV1p7beta1ResourceData"
              (\ o ->
                 GoogleCloudAssetV1p7beta1ResourceData' <$>
                   (parseJSONObject o))

instance ToJSON GoogleCloudAssetV1p7beta1ResourceData
         where
        toJSON = toJSON . _gcavrdAddtional

-- | A BigQuery destination for exporting assets to.
--
-- /See:/ 'googleCloudAssetV1p7beta1BigQueryDestination' smart constructor.
data GoogleCloudAssetV1p7beta1BigQueryDestination =
  GoogleCloudAssetV1p7beta1BigQueryDestination'
    { _gcavbqdPartitionSpec :: !(Maybe GoogleCloudAssetV1p7beta1PartitionSpec)
    , _gcavbqdSeparateTablesPerAssetType :: !(Maybe Bool)
    , _gcavbqdDataSet :: !(Maybe Text)
    , _gcavbqdForce :: !(Maybe Bool)
    , _gcavbqdTable :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudAssetV1p7beta1BigQueryDestination' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcavbqdPartitionSpec'
--
-- * 'gcavbqdSeparateTablesPerAssetType'
--
-- * 'gcavbqdDataSet'
--
-- * 'gcavbqdForce'
--
-- * 'gcavbqdTable'
googleCloudAssetV1p7beta1BigQueryDestination
    :: GoogleCloudAssetV1p7beta1BigQueryDestination
googleCloudAssetV1p7beta1BigQueryDestination =
  GoogleCloudAssetV1p7beta1BigQueryDestination'
    { _gcavbqdPartitionSpec = Nothing
    , _gcavbqdSeparateTablesPerAssetType = Nothing
    , _gcavbqdDataSet = Nothing
    , _gcavbqdForce = Nothing
    , _gcavbqdTable = Nothing
    }


-- | [partition_spec] determines whether to export to partitioned table(s)
-- and how to partition the data. If [partition_spec] is unset or
-- [partition_spec.partition_key] is unset or
-- \`PARTITION_KEY_UNSPECIFIED\`, the snapshot results will be exported to
-- non-partitioned table(s). [force] will decide whether to overwrite
-- existing table(s). If [partition_spec] is specified. First, the snapshot
-- results will be written to partitioned table(s) with two additional
-- timestamp columns, readTime and requestTime, one of which will be the
-- partition key. Secondly, in the case when any destination table already
-- exists, it will first try to update existing table\'s schema as
-- necessary by appending additional columns. Then, if [force] is \`TRUE\`,
-- the corresponding partition will be overwritten by the snapshot results
-- (data in different partitions will remain intact); if [force] is unset
-- or \`FALSE\`, it will append the data. An error will be returned if the
-- schema update or data appension fails.
gcavbqdPartitionSpec :: Lens' GoogleCloudAssetV1p7beta1BigQueryDestination (Maybe GoogleCloudAssetV1p7beta1PartitionSpec)
gcavbqdPartitionSpec
  = lens _gcavbqdPartitionSpec
      (\ s a -> s{_gcavbqdPartitionSpec = a})

-- | If this flag is \`TRUE\`, the snapshot results will be written to one or
-- multiple tables, each of which contains results of one asset type. The
-- [force] and [partition_spec] fields will apply to each of them. Field
-- [table] will be concatenated with \"_\" and the asset type names (see
-- https:\/\/cloud.google.com\/asset-inventory\/docs\/supported-asset-types
-- for supported asset types) to construct per-asset-type table names, in
-- which all non-alphanumeric characters like \".\" and \"\/\" will be
-- substituted by \"_\". Example: if field [table] is \"mytable\" and
-- snapshot results contain \"storage.googleapis.com\/Bucket\" assets, the
-- corresponding table name will be
-- \"mytable_storage_googleapis_com_Bucket\". If any of these tables does
-- not exist, a new table with the concatenated name will be created. When
-- [content_type] in the ExportAssetsRequest is \`RESOURCE\`, the schema of
-- each table will include RECORD-type columns mapped to the nested fields
-- in the Asset.resource.data field of that asset type (up to the 15 nested
-- level BigQuery supports
-- (https:\/\/cloud.google.com\/bigquery\/docs\/nested-repeated#limitations)).
-- The fields in >15 nested levels will be stored in JSON format string as
-- a child column of its parent RECORD column. If error occurs when
-- exporting to any table, the whole export call will return an error but
-- the export results that already succeed will persist. Example: if
-- exporting to table_type_A succeeds when exporting to table_type_B fails
-- during one export call, the results in table_type_A will persist and
-- there will not be partial results persisting in a table.
gcavbqdSeparateTablesPerAssetType :: Lens' GoogleCloudAssetV1p7beta1BigQueryDestination (Maybe Bool)
gcavbqdSeparateTablesPerAssetType
  = lens _gcavbqdSeparateTablesPerAssetType
      (\ s a -> s{_gcavbqdSeparateTablesPerAssetType = a})

-- | Required. The BigQuery dataset in format
-- \"projects\/projectId\/datasets\/datasetId\", to which the snapshot
-- result should be exported. If this dataset does not exist, the export
-- call returns an INVALID_ARGUMENT error.
gcavbqdDataSet :: Lens' GoogleCloudAssetV1p7beta1BigQueryDestination (Maybe Text)
gcavbqdDataSet
  = lens _gcavbqdDataSet
      (\ s a -> s{_gcavbqdDataSet = a})

-- | If the destination table already exists and this flag is \`TRUE\`, the
-- table will be overwritten by the contents of assets snapshot. If the
-- flag is \`FALSE\` or unset and the destination table already exists, the
-- export call returns an INVALID_ARGUMEMT error.
gcavbqdForce :: Lens' GoogleCloudAssetV1p7beta1BigQueryDestination (Maybe Bool)
gcavbqdForce
  = lens _gcavbqdForce (\ s a -> s{_gcavbqdForce = a})

-- | Required. The BigQuery table to which the snapshot result should be
-- written. If this table does not exist, a new table with the given name
-- will be created.
gcavbqdTable :: Lens' GoogleCloudAssetV1p7beta1BigQueryDestination (Maybe Text)
gcavbqdTable
  = lens _gcavbqdTable (\ s a -> s{_gcavbqdTable = a})

instance FromJSON
           GoogleCloudAssetV1p7beta1BigQueryDestination
         where
        parseJSON
          = withObject
              "GoogleCloudAssetV1p7beta1BigQueryDestination"
              (\ o ->
                 GoogleCloudAssetV1p7beta1BigQueryDestination' <$>
                   (o .:? "partitionSpec") <*>
                     (o .:? "separateTablesPerAssetType")
                     <*> (o .:? "dataset")
                     <*> (o .:? "force")
                     <*> (o .:? "table"))

instance ToJSON
           GoogleCloudAssetV1p7beta1BigQueryDestination
         where
        toJSON
          GoogleCloudAssetV1p7beta1BigQueryDestination'{..}
          = object
              (catMaybes
                 [("partitionSpec" .=) <$> _gcavbqdPartitionSpec,
                  ("separateTablesPerAssetType" .=) <$>
                    _gcavbqdSeparateTablesPerAssetType,
                  ("dataset" .=) <$> _gcavbqdDataSet,
                  ("force" .=) <$> _gcavbqdForce,
                  ("table" .=) <$> _gcavbqdTable])

-- | A representation of a Google Cloud resource.
--
-- /See:/ 'googleCloudAssetV1p7beta1Resource' smart constructor.
data GoogleCloudAssetV1p7beta1Resource =
  GoogleCloudAssetV1p7beta1Resource'
    { _gcavrParent :: !(Maybe Text)
    , _gcavrLocation :: !(Maybe Text)
    , _gcavrData :: !(Maybe GoogleCloudAssetV1p7beta1ResourceData)
    , _gcavrVersion :: !(Maybe Text)
    , _gcavrDiscoveryName :: !(Maybe Text)
    , _gcavrDiscoveryDocumentURI :: !(Maybe Text)
    , _gcavrResourceURL :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudAssetV1p7beta1Resource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcavrParent'
--
-- * 'gcavrLocation'
--
-- * 'gcavrData'
--
-- * 'gcavrVersion'
--
-- * 'gcavrDiscoveryName'
--
-- * 'gcavrDiscoveryDocumentURI'
--
-- * 'gcavrResourceURL'
googleCloudAssetV1p7beta1Resource
    :: GoogleCloudAssetV1p7beta1Resource
googleCloudAssetV1p7beta1Resource =
  GoogleCloudAssetV1p7beta1Resource'
    { _gcavrParent = Nothing
    , _gcavrLocation = Nothing
    , _gcavrData = Nothing
    , _gcavrVersion = Nothing
    , _gcavrDiscoveryName = Nothing
    , _gcavrDiscoveryDocumentURI = Nothing
    , _gcavrResourceURL = Nothing
    }


-- | The full name of the immediate parent of this resource. See [Resource
-- Names](https:\/\/cloud.google.com\/apis\/design\/resource_names#full_resource_name)
-- for more information. For Google Cloud assets, this value is the parent
-- resource defined in the [Cloud IAM policy
-- hierarchy](https:\/\/cloud.google.com\/iam\/docs\/overview#policy_hierarchy).
-- Example:
-- \`\/\/cloudresourcemanager.googleapis.com\/projects\/my_project_123\`
-- For third-party assets, this field may be set differently.
gcavrParent :: Lens' GoogleCloudAssetV1p7beta1Resource (Maybe Text)
gcavrParent
  = lens _gcavrParent (\ s a -> s{_gcavrParent = a})

-- | The location of the resource in Google Cloud, such as its zone and
-- region. For more information, see
-- https:\/\/cloud.google.com\/about\/locations\/.
gcavrLocation :: Lens' GoogleCloudAssetV1p7beta1Resource (Maybe Text)
gcavrLocation
  = lens _gcavrLocation
      (\ s a -> s{_gcavrLocation = a})

-- | The content of the resource, in which some sensitive fields are removed
-- and may not be present.
gcavrData :: Lens' GoogleCloudAssetV1p7beta1Resource (Maybe GoogleCloudAssetV1p7beta1ResourceData)
gcavrData
  = lens _gcavrData (\ s a -> s{_gcavrData = a})

-- | The API version. Example: \`v1\`
gcavrVersion :: Lens' GoogleCloudAssetV1p7beta1Resource (Maybe Text)
gcavrVersion
  = lens _gcavrVersion (\ s a -> s{_gcavrVersion = a})

-- | The JSON schema name listed in the discovery document. Example:
-- \`Project\` This value is unspecified for resources that do not have an
-- API based on a discovery document, such as Cloud Bigtable.
gcavrDiscoveryName :: Lens' GoogleCloudAssetV1p7beta1Resource (Maybe Text)
gcavrDiscoveryName
  = lens _gcavrDiscoveryName
      (\ s a -> s{_gcavrDiscoveryName = a})

-- | The URL of the discovery document containing the resource\'s JSON
-- schema. Example:
-- \`https:\/\/www.googleapis.com\/discovery\/v1\/apis\/compute\/v1\/rest\`
-- This value is unspecified for resources that do not have an API based on
-- a discovery document, such as Cloud Bigtable.
gcavrDiscoveryDocumentURI :: Lens' GoogleCloudAssetV1p7beta1Resource (Maybe Text)
gcavrDiscoveryDocumentURI
  = lens _gcavrDiscoveryDocumentURI
      (\ s a -> s{_gcavrDiscoveryDocumentURI = a})

-- | The REST URL for accessing the resource. An HTTP \`GET\` request using
-- this URL returns the resource itself. Example:
-- \`https:\/\/cloudresourcemanager.googleapis.com\/v1\/projects\/my-project-123\`
-- This value is unspecified for resources without a REST API.
gcavrResourceURL :: Lens' GoogleCloudAssetV1p7beta1Resource (Maybe Text)
gcavrResourceURL
  = lens _gcavrResourceURL
      (\ s a -> s{_gcavrResourceURL = a})

instance FromJSON GoogleCloudAssetV1p7beta1Resource
         where
        parseJSON
          = withObject "GoogleCloudAssetV1p7beta1Resource"
              (\ o ->
                 GoogleCloudAssetV1p7beta1Resource' <$>
                   (o .:? "parent") <*> (o .:? "location") <*>
                     (o .:? "data")
                     <*> (o .:? "version")
                     <*> (o .:? "discoveryName")
                     <*> (o .:? "discoveryDocumentUri")
                     <*> (o .:? "resourceUrl"))

instance ToJSON GoogleCloudAssetV1p7beta1Resource
         where
        toJSON GoogleCloudAssetV1p7beta1Resource'{..}
          = object
              (catMaybes
                 [("parent" .=) <$> _gcavrParent,
                  ("location" .=) <$> _gcavrLocation,
                  ("data" .=) <$> _gcavrData,
                  ("version" .=) <$> _gcavrVersion,
                  ("discoveryName" .=) <$> _gcavrDiscoveryName,
                  ("discoveryDocumentUri" .=) <$>
                    _gcavrDiscoveryDocumentURI,
                  ("resourceUrl" .=) <$> _gcavrResourceURL])
