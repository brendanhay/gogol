{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.FirebaseRemoteConfig.Internal.Product
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.FirebaseRemoteConfig.Internal.Product
  ( -- * RemoteConfig
    RemoteConfig (..),
    newRemoteConfig,

    -- * RemoteConfig_Parameters
    RemoteConfig_Parameters (..),
    newRemoteConfig_Parameters,

    -- * RemoteConfigCondition
    RemoteConfigCondition (..),
    newRemoteConfigCondition,

    -- * RemoteConfigParameter
    RemoteConfigParameter (..),
    newRemoteConfigParameter,

    -- * RemoteConfigParameter_ConditionalValues
    RemoteConfigParameter_ConditionalValues (..),
    newRemoteConfigParameter_ConditionalValues,

    -- * RemoteConfigParameterValue
    RemoteConfigParameterValue (..),
    newRemoteConfigParameterValue,
  )
where

import Gogol.FirebaseRemoteConfig.Internal.Sum
import Gogol.Prelude qualified as Core

-- | -   The RemoteConfig consists of a list of conditions (which can be thought of as named \"if\" statements) and a map of parameters (parameter key to a structure containing an optional default value, as well as a optional submap of (condition name to value when that condition is true).
--
-- /See:/ 'newRemoteConfig' smart constructor.
data RemoteConfig = RemoteConfig
  { -- | The list of named conditions. The order /does/ affect the semantics. The condition_name values of these entries must be unique.
    --
    -- The resolved value of a config parameter P is determined as follow: * Let Y be the set of values from the submap of P that refer to conditions that evaluate to \<code>true\<\/code>. * If Y is non empty, the value is taken from the specific submap in Y whose condition/name is the earliest in this condition list. * Else, if P has a default value option (condition/name is empty) then the value is taken from that option. * Else, parameter P has no value and is omitted from the config result.
    --
    -- Example: parameter key \"p1\", default value \"v1\", submap specified as {\"c1\": v2, \"c2\": v3} where \"c1\" and \"c2\" are names of conditions in the condition list (where \"c1\" in this example appears before \"c2\"). The value of p1 would be v2 as long as c1 is true. Otherwise, if c2 is true, p1 would evaluate to v3, and if c1 and c2 are both false, p1 would evaluate to v1. If no default value was specified, and c1 and c2 were both false, no value for p1 would be generated.
    conditions :: (Core.Maybe [RemoteConfigCondition]),
    -- | Map of parameter keys to their optional default values and optional submap of (condition name : value). Order doesn\'t affect semantics, and so is sorted by the server. The \'key\' values of the params must be unique.
    parameters :: (Core.Maybe RemoteConfig_Parameters)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RemoteConfig' with the minimum fields required to make a request.
newRemoteConfig ::
  RemoteConfig
newRemoteConfig =
  RemoteConfig
    { conditions = Core.Nothing,
      parameters = Core.Nothing
    }

instance Core.FromJSON RemoteConfig where
  parseJSON =
    Core.withObject
      "RemoteConfig"
      ( \o ->
          RemoteConfig
            Core.<$> (o Core..:? "conditions")
            Core.<*> (o Core..:? "parameters")
      )

instance Core.ToJSON RemoteConfig where
  toJSON RemoteConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("conditions" Core..=) Core.<$> conditions,
            ("parameters" Core..=) Core.<$> parameters
          ]
      )

-- | Map of parameter keys to their optional default values and optional submap of (condition name : value). Order doesn\'t affect semantics, and so is sorted by the server. The \'key\' values of the params must be unique.
--
-- /See:/ 'newRemoteConfig_Parameters' smart constructor.
newtype RemoteConfig_Parameters = RemoteConfig_Parameters
  { additional :: (Core.HashMap Core.Text RemoteConfigParameter)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RemoteConfig_Parameters' with the minimum fields required to make a request.
newRemoteConfig_Parameters ::
  -- |  See 'additional'.
  Core.HashMap Core.Text RemoteConfigParameter ->
  RemoteConfig_Parameters
newRemoteConfig_Parameters additional =
  RemoteConfig_Parameters {additional = additional}

instance Core.FromJSON RemoteConfig_Parameters where
  parseJSON =
    Core.withObject
      "RemoteConfig_Parameters"
      (\o -> RemoteConfig_Parameters Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON RemoteConfig_Parameters where
  toJSON RemoteConfig_Parameters {..} = Core.toJSON additional

-- | A single RemoteConfig Condition. A list of these (because order matters) are part of a single RemoteConfig template.
--
-- /See:/ 'newRemoteConfigCondition' smart constructor.
data RemoteConfigCondition = RemoteConfigCondition
  { -- | DO NOT USE. Implementation removed and will not be added unless requested. A description for this Condition. Length must be less than or equal to 100 characters (or more precisely, unicode code points, which is defined in java\/com\/google\/wireless\/android\/config\/ConstsExporter.java). A description may contain any Unicode characters
    description :: (Core.Maybe Core.Text),
    -- | Required.
    expression :: (Core.Maybe Core.Text),
    -- | Required. A non empty and unique name of this condition.
    name :: (Core.Maybe Core.Text),
    -- | Optional. The display (tag) color of this condition. This serves as part of a tag (in the future, we may add tag text as well as tag color, but that is not yet implemented in the UI). This value has no affect on the semantics of the delivered config and it is ignored by the backend, except for passing it through write\/read requests. Not having this value or having the \"CONDITION/DISPLAY/COLOR_UNSPECIFIED\" value (0) have the same meaning: Let the UI choose any valid color when displaying the condition.
    tagColor :: (Core.Maybe RemoteConfigCondition_TagColor)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RemoteConfigCondition' with the minimum fields required to make a request.
newRemoteConfigCondition ::
  RemoteConfigCondition
newRemoteConfigCondition =
  RemoteConfigCondition
    { description = Core.Nothing,
      expression = Core.Nothing,
      name = Core.Nothing,
      tagColor = Core.Nothing
    }

instance Core.FromJSON RemoteConfigCondition where
  parseJSON =
    Core.withObject
      "RemoteConfigCondition"
      ( \o ->
          RemoteConfigCondition
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "expression")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "tagColor")
      )

instance Core.ToJSON RemoteConfigCondition where
  toJSON RemoteConfigCondition {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("expression" Core..=) Core.<$> expression,
            ("name" Core..=) Core.<$> name,
            ("tagColor" Core..=) Core.<$> tagColor
          ]
      )

-- | While default/value and conditional/values are each optional, at least one of the two is required - otherwise, the parameter is meaningless (and an exception will be thrown by the validation logic).
--
-- /See:/ 'newRemoteConfigParameter' smart constructor.
data RemoteConfigParameter = RemoteConfigParameter
  { -- | Optional - a map of (condition/name, value). The condition/name of the highest priority (the one listed first in the conditions array) determines the value of this parameter.
    conditionalValues :: (Core.Maybe RemoteConfigParameter_ConditionalValues),
    -- | Optional - value to set the parameter to, when none of the named conditions evaluate to \<code>true\<\/code>.
    defaultValue :: (Core.Maybe RemoteConfigParameterValue),
    -- | Optional. A description for this Parameter. Length must be less than or equal to 100 characters (or more precisely, unicode code points, which is defined in java\/com\/google\/wireless\/android\/config\/ConstsExporter.java). A description may contain any Unicode characters
    description :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RemoteConfigParameter' with the minimum fields required to make a request.
newRemoteConfigParameter ::
  RemoteConfigParameter
newRemoteConfigParameter =
  RemoteConfigParameter
    { conditionalValues = Core.Nothing,
      defaultValue = Core.Nothing,
      description = Core.Nothing
    }

instance Core.FromJSON RemoteConfigParameter where
  parseJSON =
    Core.withObject
      "RemoteConfigParameter"
      ( \o ->
          RemoteConfigParameter
            Core.<$> (o Core..:? "conditionalValues")
            Core.<*> (o Core..:? "defaultValue")
            Core.<*> (o Core..:? "description")
      )

instance Core.ToJSON RemoteConfigParameter where
  toJSON RemoteConfigParameter {..} =
    Core.object
      ( Core.catMaybes
          [ ("conditionalValues" Core..=) Core.<$> conditionalValues,
            ("defaultValue" Core..=) Core.<$> defaultValue,
            ("description" Core..=) Core.<$> description
          ]
      )

-- | Optional - a map of (condition/name, value). The condition/name of the highest priority (the one listed first in the conditions array) determines the value of this parameter.
--
-- /See:/ 'newRemoteConfigParameter_ConditionalValues' smart constructor.
newtype RemoteConfigParameter_ConditionalValues = RemoteConfigParameter_ConditionalValues
  { additional :: (Core.HashMap Core.Text RemoteConfigParameterValue)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RemoteConfigParameter_ConditionalValues' with the minimum fields required to make a request.
newRemoteConfigParameter_ConditionalValues ::
  -- |  See 'additional'.
  Core.HashMap Core.Text RemoteConfigParameterValue ->
  RemoteConfigParameter_ConditionalValues
newRemoteConfigParameter_ConditionalValues additional =
  RemoteConfigParameter_ConditionalValues {additional = additional}

instance Core.FromJSON RemoteConfigParameter_ConditionalValues where
  parseJSON =
    Core.withObject
      "RemoteConfigParameter_ConditionalValues"
      ( \o ->
          RemoteConfigParameter_ConditionalValues
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON RemoteConfigParameter_ConditionalValues where
  toJSON RemoteConfigParameter_ConditionalValues {..} =
    Core.toJSON additional

-- | A RemoteConfigParameter\'s \"value\" (either the default value, or the value associated with a condition name) is either a string, or the \"use/in/app/default\" indicator (which means to leave out the parameter from the returned \<key, value> map that is the output of the parameter fetch). We represent the \"use/in/app/default\" as a bool, but (when using the boolean instead of the string) it should always be \<code>true\<\/code>.
--
-- /See:/ 'newRemoteConfigParameterValue' smart constructor.
data RemoteConfigParameterValue = RemoteConfigParameterValue
  { -- | if true, omit the parameter from the map of fetched parameter values
    useInAppDefault :: (Core.Maybe Core.Bool),
    -- | the string to set the parameter to
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RemoteConfigParameterValue' with the minimum fields required to make a request.
newRemoteConfigParameterValue ::
  RemoteConfigParameterValue
newRemoteConfigParameterValue =
  RemoteConfigParameterValue
    { useInAppDefault = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON RemoteConfigParameterValue where
  parseJSON =
    Core.withObject
      "RemoteConfigParameterValue"
      ( \o ->
          RemoteConfigParameterValue
            Core.<$> (o Core..:? "useInAppDefault")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON RemoteConfigParameterValue where
  toJSON RemoteConfigParameterValue {..} =
    Core.object
      ( Core.catMaybes
          [ ("useInAppDefault" Core..=) Core.<$> useInAppDefault,
            ("value" Core..=) Core.<$> value
          ]
      )
