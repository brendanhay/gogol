{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.FirebaseRemoteConfig.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.FirebaseRemoteConfig.Types.Product where

import           Network.Google.FirebaseRemoteConfig.Types.Sum
import           Network.Google.Prelude

-- | A RemoteConfigParameter\'s \"value\" (either the default value, or the
-- value associated with a condition name) is either a string, or the
-- \"use_in_app_default\" indicator (which means to leave out the parameter
-- from the returned map that is the output of the parameter fetch). We
-- represent the \"use_in_app_default\" as a bool, but (when using the
-- boolean instead of the string) it should always be 'true'.
--
-- /See:/ 'remoteConfigParameterValue' smart constructor.
data RemoteConfigParameterValue =
  RemoteConfigParameterValue'
    { _rcpvValue           :: !(Maybe Text)
    , _rcpvUseInAppDefault :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RemoteConfigParameterValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcpvValue'
--
-- * 'rcpvUseInAppDefault'
remoteConfigParameterValue
    :: RemoteConfigParameterValue
remoteConfigParameterValue =
  RemoteConfigParameterValue'
    {_rcpvValue = Nothing, _rcpvUseInAppDefault = Nothing}


-- | the string to set the parameter to
rcpvValue :: Lens' RemoteConfigParameterValue (Maybe Text)
rcpvValue
  = lens _rcpvValue (\ s a -> s{_rcpvValue = a})

-- | if true, omit the parameter from the map of fetched parameter values
rcpvUseInAppDefault :: Lens' RemoteConfigParameterValue (Maybe Bool)
rcpvUseInAppDefault
  = lens _rcpvUseInAppDefault
      (\ s a -> s{_rcpvUseInAppDefault = a})

instance FromJSON RemoteConfigParameterValue where
        parseJSON
          = withObject "RemoteConfigParameterValue"
              (\ o ->
                 RemoteConfigParameterValue' <$>
                   (o .:? "value") <*> (o .:? "useInAppDefault"))

instance ToJSON RemoteConfigParameterValue where
        toJSON RemoteConfigParameterValue'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _rcpvValue,
                  ("useInAppDefault" .=) <$> _rcpvUseInAppDefault])

-- | Optional - a map of (condition_name, value). The condition_name of the
-- highest priority (the one listed first in the conditions array)
-- determines the value of this parameter.
--
-- /See:/ 'remoteConfigParameterConditionalValues' smart constructor.
newtype RemoteConfigParameterConditionalValues =
  RemoteConfigParameterConditionalValues'
    { _rcpcvAddtional :: HashMap Text RemoteConfigParameterValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RemoteConfigParameterConditionalValues' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcpcvAddtional'
remoteConfigParameterConditionalValues
    :: HashMap Text RemoteConfigParameterValue -- ^ 'rcpcvAddtional'
    -> RemoteConfigParameterConditionalValues
remoteConfigParameterConditionalValues pRcpcvAddtional_ =
  RemoteConfigParameterConditionalValues'
    {_rcpcvAddtional = _Coerce # pRcpcvAddtional_}


rcpcvAddtional :: Lens' RemoteConfigParameterConditionalValues (HashMap Text RemoteConfigParameterValue)
rcpcvAddtional
  = lens _rcpcvAddtional
      (\ s a -> s{_rcpcvAddtional = a})
      . _Coerce

instance FromJSON
           RemoteConfigParameterConditionalValues
         where
        parseJSON
          = withObject "RemoteConfigParameterConditionalValues"
              (\ o ->
                 RemoteConfigParameterConditionalValues' <$>
                   (parseJSONObject o))

instance ToJSON
           RemoteConfigParameterConditionalValues
         where
        toJSON = toJSON . _rcpcvAddtional

-- | Map of parameter keys to their optional default values and optional
-- submap of (condition name : value). Order doesn\'t affect semantics, and
-- so is sorted by the server. The \'key\' values of the params must be
-- unique.
--
-- /See:/ 'remoteConfigParameters' smart constructor.
newtype RemoteConfigParameters =
  RemoteConfigParameters'
    { _rcpAddtional :: HashMap Text RemoteConfigParameter
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RemoteConfigParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcpAddtional'
remoteConfigParameters
    :: HashMap Text RemoteConfigParameter -- ^ 'rcpAddtional'
    -> RemoteConfigParameters
remoteConfigParameters pRcpAddtional_ =
  RemoteConfigParameters' {_rcpAddtional = _Coerce # pRcpAddtional_}


rcpAddtional :: Lens' RemoteConfigParameters (HashMap Text RemoteConfigParameter)
rcpAddtional
  = lens _rcpAddtional (\ s a -> s{_rcpAddtional = a})
      . _Coerce

instance FromJSON RemoteConfigParameters where
        parseJSON
          = withObject "RemoteConfigParameters"
              (\ o ->
                 RemoteConfigParameters' <$> (parseJSONObject o))

instance ToJSON RemoteConfigParameters where
        toJSON = toJSON . _rcpAddtional

-- | While default_value and conditional_values are each optional, at least
-- one of the two is required - otherwise, the parameter is meaningless
-- (and an exception will be thrown by the validation logic).
--
-- /See:/ 'remoteConfigParameter' smart constructor.
data RemoteConfigParameter =
  RemoteConfigParameter'
    { _rcpDefaultValue      :: !(Maybe RemoteConfigParameterValue)
    , _rcpDescription       :: !(Maybe Text)
    , _rcpConditionalValues :: !(Maybe RemoteConfigParameterConditionalValues)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RemoteConfigParameter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcpDefaultValue'
--
-- * 'rcpDescription'
--
-- * 'rcpConditionalValues'
remoteConfigParameter
    :: RemoteConfigParameter
remoteConfigParameter =
  RemoteConfigParameter'
    { _rcpDefaultValue = Nothing
    , _rcpDescription = Nothing
    , _rcpConditionalValues = Nothing
    }


-- | Optional - value to set the parameter to, when none of the named
-- conditions evaluate to 'true'.
rcpDefaultValue :: Lens' RemoteConfigParameter (Maybe RemoteConfigParameterValue)
rcpDefaultValue
  = lens _rcpDefaultValue
      (\ s a -> s{_rcpDefaultValue = a})

-- | Optional. A description for this Parameter. Length must be less than or
-- equal to 100 characters (or more precisely, unicode code points, which
-- is defined in
-- java\/com\/google\/wireless\/android\/config\/ConstsExporter.java). A
-- description may contain any Unicode characters
rcpDescription :: Lens' RemoteConfigParameter (Maybe Text)
rcpDescription
  = lens _rcpDescription
      (\ s a -> s{_rcpDescription = a})

-- | Optional - a map of (condition_name, value). The condition_name of the
-- highest priority (the one listed first in the conditions array)
-- determines the value of this parameter.
rcpConditionalValues :: Lens' RemoteConfigParameter (Maybe RemoteConfigParameterConditionalValues)
rcpConditionalValues
  = lens _rcpConditionalValues
      (\ s a -> s{_rcpConditionalValues = a})

instance FromJSON RemoteConfigParameter where
        parseJSON
          = withObject "RemoteConfigParameter"
              (\ o ->
                 RemoteConfigParameter' <$>
                   (o .:? "defaultValue") <*> (o .:? "description") <*>
                     (o .:? "conditionalValues"))

instance ToJSON RemoteConfigParameter where
        toJSON RemoteConfigParameter'{..}
          = object
              (catMaybes
                 [("defaultValue" .=) <$> _rcpDefaultValue,
                  ("description" .=) <$> _rcpDescription,
                  ("conditionalValues" .=) <$> _rcpConditionalValues])

-- | A single RemoteConfig Condition. A list of these (because order matters)
-- are part of a single RemoteConfig template.
--
-- /See:/ 'remoteConfigCondition' smart constructor.
data RemoteConfigCondition =
  RemoteConfigCondition'
    { _rccTagColor    :: !(Maybe RemoteConfigConditionTagColor)
    , _rccName        :: !(Maybe Text)
    , _rccExpression  :: !(Maybe Text)
    , _rccDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RemoteConfigCondition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rccTagColor'
--
-- * 'rccName'
--
-- * 'rccExpression'
--
-- * 'rccDescription'
remoteConfigCondition
    :: RemoteConfigCondition
remoteConfigCondition =
  RemoteConfigCondition'
    { _rccTagColor = Nothing
    , _rccName = Nothing
    , _rccExpression = Nothing
    , _rccDescription = Nothing
    }


-- | Optional. The display (tag) color of this condition. This serves as part
-- of a tag (in the future, we may add tag text as well as tag color, but
-- that is not yet implemented in the UI). This value has no affect on the
-- semantics of the delivered config and it is ignored by the backend,
-- except for passing it through write\/read requests. Not having this
-- value or having the \"CONDITION_DISPLAY_COLOR_UNSPECIFIED\" value (0)
-- have the same meaning: Let the UI choose any valid color when displaying
-- the condition.
rccTagColor :: Lens' RemoteConfigCondition (Maybe RemoteConfigConditionTagColor)
rccTagColor
  = lens _rccTagColor (\ s a -> s{_rccTagColor = a})

-- | Required. A non empty and unique name of this condition.
rccName :: Lens' RemoteConfigCondition (Maybe Text)
rccName = lens _rccName (\ s a -> s{_rccName = a})

-- | Required.
rccExpression :: Lens' RemoteConfigCondition (Maybe Text)
rccExpression
  = lens _rccExpression
      (\ s a -> s{_rccExpression = a})

-- | DO NOT USE. Implementation removed and will not be added unless
-- requested. A description for this Condition. Length must be less than or
-- equal to 100 characters (or more precisely, unicode code points, which
-- is defined in
-- java\/com\/google\/wireless\/android\/config\/ConstsExporter.java). A
-- description may contain any Unicode characters
rccDescription :: Lens' RemoteConfigCondition (Maybe Text)
rccDescription
  = lens _rccDescription
      (\ s a -> s{_rccDescription = a})

instance FromJSON RemoteConfigCondition where
        parseJSON
          = withObject "RemoteConfigCondition"
              (\ o ->
                 RemoteConfigCondition' <$>
                   (o .:? "tagColor") <*> (o .:? "name") <*>
                     (o .:? "expression")
                     <*> (o .:? "description"))

instance ToJSON RemoteConfigCondition where
        toJSON RemoteConfigCondition'{..}
          = object
              (catMaybes
                 [("tagColor" .=) <$> _rccTagColor,
                  ("name" .=) <$> _rccName,
                  ("expression" .=) <$> _rccExpression,
                  ("description" .=) <$> _rccDescription])

-- | * The RemoteConfig consists of a list of conditions (which can be
-- thought of as named \"if\" statements) and a map of parameters
-- (parameter key to a structure containing an optional default value, as
-- well as a optional submap of (condition name to value when that
-- condition is true).
--
-- /See:/ 'remoteConfig' smart constructor.
data RemoteConfig =
  RemoteConfig'
    { _rcParameters :: !(Maybe RemoteConfigParameters)
    , _rcConditions :: !(Maybe [RemoteConfigCondition])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RemoteConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcParameters'
--
-- * 'rcConditions'
remoteConfig
    :: RemoteConfig
remoteConfig = RemoteConfig' {_rcParameters = Nothing, _rcConditions = Nothing}


-- | Map of parameter keys to their optional default values and optional
-- submap of (condition name : value). Order doesn\'t affect semantics, and
-- so is sorted by the server. The \'key\' values of the params must be
-- unique.
rcParameters :: Lens' RemoteConfig (Maybe RemoteConfigParameters)
rcParameters
  = lens _rcParameters (\ s a -> s{_rcParameters = a})

-- | The list of named conditions. The order *does* affect the semantics. The
-- condition_name values of these entries must be unique. The resolved
-- value of a config parameter P is determined as follow: * Let Y be the
-- set of values from the submap of P that refer to conditions that
-- evaluate to 'true'. * If Y is non empty, the value is taken from the
-- specific submap in Y whose condition_name is the earliest in this
-- condition list. * Else, if P has a default value option (condition_name
-- is empty) then the value is taken from that option. * Else, parameter P
-- has no value and is omitted from the config result. Example: parameter
-- key \"p1\", default value \"v1\", submap specified as {\"c1\": v2,
-- \"c2\": v3} where \"c1\" and \"c2\" are names of conditions in the
-- condition list (where \"c1\" in this example appears before \"c2\"). The
-- value of p1 would be v2 as long as c1 is true. Otherwise, if c2 is true,
-- p1 would evaluate to v3, and if c1 and c2 are both false, p1 would
-- evaluate to v1. If no default value was specified, and c1 and c2 were
-- both false, no value for p1 would be generated.
rcConditions :: Lens' RemoteConfig [RemoteConfigCondition]
rcConditions
  = lens _rcConditions (\ s a -> s{_rcConditions = a})
      . _Default
      . _Coerce

instance FromJSON RemoteConfig where
        parseJSON
          = withObject "RemoteConfig"
              (\ o ->
                 RemoteConfig' <$>
                   (o .:? "parameters") <*>
                     (o .:? "conditions" .!= mempty))

instance ToJSON RemoteConfig where
        toJSON RemoteConfig'{..}
          = object
              (catMaybes
                 [("parameters" .=) <$> _rcParameters,
                  ("conditions" .=) <$> _rcConditions])
