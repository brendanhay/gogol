{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.PageSpeed.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.PageSpeed.Internal.Product
  ( -- * AuditRefs
    AuditRefs (..),
    newAuditRefs,

    -- * Bucket
    Bucket (..),
    newBucket,

    -- * Categories
    Categories (..),
    newCategories,

    -- * CategoryGroupV5
    CategoryGroupV5 (..),
    newCategoryGroupV5,

    -- * ConfigSettings
    ConfigSettings (..),
    newConfigSettings,

    -- * Environment
    Environment (..),
    newEnvironment,

    -- * I18n
    I18n (..),
    newI18n,

    -- * LighthouseAuditResultV5
    LighthouseAuditResultV5 (..),
    newLighthouseAuditResultV5,

    -- * LighthouseAuditResultV5_Details
    LighthouseAuditResultV5_Details (..),
    newLighthouseAuditResultV5_Details,

    -- * LighthouseCategoryV5
    LighthouseCategoryV5 (..),
    newLighthouseCategoryV5,

    -- * LighthouseResultV5
    LighthouseResultV5 (..),
    newLighthouseResultV5,

    -- * LighthouseResultV5_Audits
    LighthouseResultV5_Audits (..),
    newLighthouseResultV5_Audits,

    -- * LighthouseResultV5_CategoryGroups
    LighthouseResultV5_CategoryGroups (..),
    newLighthouseResultV5_CategoryGroups,

    -- * PagespeedApiLoadingExperienceV5
    PagespeedApiLoadingExperienceV5 (..),
    newPagespeedApiLoadingExperienceV5,

    -- * PagespeedApiLoadingExperienceV5_Metrics
    PagespeedApiLoadingExperienceV5_Metrics (..),
    newPagespeedApiLoadingExperienceV5_Metrics,

    -- * PagespeedApiPagespeedResponseV5
    PagespeedApiPagespeedResponseV5 (..),
    newPagespeedApiPagespeedResponseV5,

    -- * PagespeedVersion
    PagespeedVersion (..),
    newPagespeedVersion,

    -- * RendererFormattedStrings
    RendererFormattedStrings (..),
    newRendererFormattedStrings,

    -- * RuntimeError
    RuntimeError (..),
    newRuntimeError,

    -- * StackPack
    StackPack (..),
    newStackPack,

    -- * StackPack_Descriptions
    StackPack_Descriptions (..),
    newStackPack_Descriptions,

    -- * Timing
    Timing (..),
    newTiming,

    -- * UserPageLoadMetricV5
    UserPageLoadMetricV5 (..),
    newUserPageLoadMetricV5,
  )
where

import Gogol.PageSpeed.Internal.Sum
import qualified Gogol.Prelude as Core

-- | A light reference to an audit by id, used to group and weight audits in a given category.
--
-- /See:/ 'newAuditRefs' smart constructor.
data AuditRefs = AuditRefs
  { -- | The conventional acronym for the audit\/metric.
    acronym :: (Core.Maybe Core.Text),
    -- | The category group that the audit belongs to (optional).
    group' :: (Core.Maybe Core.Text),
    -- | The audit ref id.
    id :: (Core.Maybe Core.Text),
    -- | Any audit IDs closely relevant to this one.
    relevantAudits :: (Core.Maybe [Core.Text]),
    -- | The weight this audit\'s score has on the overall category score.
    weight :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AuditRefs' with the minimum fields required to make a request.
newAuditRefs ::
  AuditRefs
newAuditRefs =
  AuditRefs
    { acronym = Core.Nothing,
      group' = Core.Nothing,
      id = Core.Nothing,
      relevantAudits = Core.Nothing,
      weight = Core.Nothing
    }

instance Core.FromJSON AuditRefs where
  parseJSON =
    Core.withObject
      "AuditRefs"
      ( \o ->
          AuditRefs
            Core.<$> (o Core..:? "acronym")
            Core.<*> (o Core..:? "group")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "relevantAudits")
            Core.<*> (o Core..:? "weight")
      )

instance Core.ToJSON AuditRefs where
  toJSON AuditRefs {..} =
    Core.object
      ( Core.catMaybes
          [ ("acronym" Core..=) Core.<$> acronym,
            ("group" Core..=) Core.<$> group',
            ("id" Core..=) Core.<$> id,
            ("relevantAudits" Core..=) Core.<$> relevantAudits,
            ("weight" Core..=) Core.<$> weight
          ]
      )

-- | A proportion of data in the total distribution, bucketed by a min\/max percentage. Each bucket\'s range is bounded by min \<= x \< max, In millisecond.
--
-- /See:/ 'newBucket' smart constructor.
data Bucket = Bucket
  { -- | Upper bound for a bucket\'s range.
    max :: (Core.Maybe Core.Int32),
    -- | Lower bound for a bucket\'s range.
    min :: (Core.Maybe Core.Int32),
    -- | The proportion of data in this bucket.
    proportion :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Bucket' with the minimum fields required to make a request.
newBucket ::
  Bucket
newBucket =
  Bucket {max = Core.Nothing, min = Core.Nothing, proportion = Core.Nothing}

instance Core.FromJSON Bucket where
  parseJSON =
    Core.withObject
      "Bucket"
      ( \o ->
          Bucket
            Core.<$> (o Core..:? "max")
            Core.<*> (o Core..:? "min")
            Core.<*> (o Core..:? "proportion")
      )

instance Core.ToJSON Bucket where
  toJSON Bucket {..} =
    Core.object
      ( Core.catMaybes
          [ ("max" Core..=) Core.<$> max,
            ("min" Core..=) Core.<$> min,
            ("proportion" Core..=) Core.<$> proportion
          ]
      )

-- | The categories in a Lighthouse run.
--
-- /See:/ 'newCategories' smart constructor.
data Categories = Categories
  { -- | The accessibility category, containing all accessibility related audits.
    accessibility :: (Core.Maybe LighthouseCategoryV5),
    -- | The best practices category, containing all best practices related audits.
    bestPractices :: (Core.Maybe LighthouseCategoryV5),
    -- | The performance category, containing all performance related audits.
    performance :: (Core.Maybe LighthouseCategoryV5),
    -- | The Progressive-Web-App (PWA) category, containing all pwa related audits.
    pwa :: (Core.Maybe LighthouseCategoryV5),
    -- | The Search-Engine-Optimization (SEO) category, containing all seo related audits.
    seo :: (Core.Maybe LighthouseCategoryV5)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Categories' with the minimum fields required to make a request.
newCategories ::
  Categories
newCategories =
  Categories
    { accessibility = Core.Nothing,
      bestPractices = Core.Nothing,
      performance = Core.Nothing,
      pwa = Core.Nothing,
      seo = Core.Nothing
    }

instance Core.FromJSON Categories where
  parseJSON =
    Core.withObject
      "Categories"
      ( \o ->
          Categories
            Core.<$> (o Core..:? "accessibility")
            Core.<*> (o Core..:? "best-practices")
            Core.<*> (o Core..:? "performance")
            Core.<*> (o Core..:? "pwa")
            Core.<*> (o Core..:? "seo")
      )

instance Core.ToJSON Categories where
  toJSON Categories {..} =
    Core.object
      ( Core.catMaybes
          [ ("accessibility" Core..=) Core.<$> accessibility,
            ("best-practices" Core..=) Core.<$> bestPractices,
            ("performance" Core..=) Core.<$> performance,
            ("pwa" Core..=) Core.<$> pwa,
            ("seo" Core..=) Core.<$> seo
          ]
      )

-- | Message containing a category
--
-- /See:/ 'newCategoryGroupV5' smart constructor.
data CategoryGroupV5 = CategoryGroupV5
  { -- | The description of what the category is grouping
    description :: (Core.Maybe Core.Text),
    -- | The human readable title of the group
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CategoryGroupV5' with the minimum fields required to make a request.
newCategoryGroupV5 ::
  CategoryGroupV5
newCategoryGroupV5 =
  CategoryGroupV5 {description = Core.Nothing, title = Core.Nothing}

instance Core.FromJSON CategoryGroupV5 where
  parseJSON =
    Core.withObject
      "CategoryGroupV5"
      ( \o ->
          CategoryGroupV5
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON CategoryGroupV5 where
  toJSON CategoryGroupV5 {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | Message containing the configuration settings for the Lighthouse run.
--
-- /See:/ 'newConfigSettings' smart constructor.
data ConfigSettings = ConfigSettings
  { -- | How Lighthouse was run, e.g. from the Chrome extension or from the npm module.
    channel :: (Core.Maybe Core.Text),
    -- | The form factor the emulation should use. This field is deprecated, form_factor should be used instead.
    emulatedFormFactor :: (Core.Maybe Core.Text),
    -- | How Lighthouse should interpret this run in regards to scoring performance metrics and skipping mobile-only tests in desktop.
    formFactor :: (Core.Maybe Core.Text),
    -- | The locale setting.
    locale :: (Core.Maybe Core.Text),
    -- | List of categories of audits the run should conduct.
    onlyCategories :: (Core.Maybe Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConfigSettings' with the minimum fields required to make a request.
newConfigSettings ::
  ConfigSettings
newConfigSettings =
  ConfigSettings
    { channel = Core.Nothing,
      emulatedFormFactor = Core.Nothing,
      formFactor = Core.Nothing,
      locale = Core.Nothing,
      onlyCategories = Core.Nothing
    }

instance Core.FromJSON ConfigSettings where
  parseJSON =
    Core.withObject
      "ConfigSettings"
      ( \o ->
          ConfigSettings
            Core.<$> (o Core..:? "channel")
            Core.<*> (o Core..:? "emulatedFormFactor")
            Core.<*> (o Core..:? "formFactor")
            Core.<*> (o Core..:? "locale")
            Core.<*> (o Core..:? "onlyCategories")
      )

instance Core.ToJSON ConfigSettings where
  toJSON ConfigSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("channel" Core..=) Core.<$> channel,
            ("emulatedFormFactor" Core..=)
              Core.<$> emulatedFormFactor,
            ("formFactor" Core..=) Core.<$> formFactor,
            ("locale" Core..=) Core.<$> locale,
            ("onlyCategories" Core..=) Core.<$> onlyCategories
          ]
      )

-- | Message containing environment configuration for a Lighthouse run.
--
-- /See:/ 'newEnvironment' smart constructor.
data Environment = Environment
  { -- | The benchmark index number that indicates rough device class.
    benchmarkIndex :: (Core.Maybe Core.Double),
    -- | The user agent string of the version of Chrome used.
    hostUserAgent :: (Core.Maybe Core.Text),
    -- | The user agent string that was sent over the network.
    networkUserAgent :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Environment' with the minimum fields required to make a request.
newEnvironment ::
  Environment
newEnvironment =
  Environment
    { benchmarkIndex = Core.Nothing,
      hostUserAgent = Core.Nothing,
      networkUserAgent = Core.Nothing
    }

instance Core.FromJSON Environment where
  parseJSON =
    Core.withObject
      "Environment"
      ( \o ->
          Environment
            Core.<$> (o Core..:? "benchmarkIndex")
            Core.<*> (o Core..:? "hostUserAgent")
            Core.<*> (o Core..:? "networkUserAgent")
      )

instance Core.ToJSON Environment where
  toJSON Environment {..} =
    Core.object
      ( Core.catMaybes
          [ ("benchmarkIndex" Core..=) Core.<$> benchmarkIndex,
            ("hostUserAgent" Core..=) Core.<$> hostUserAgent,
            ("networkUserAgent" Core..=)
              Core.<$> networkUserAgent
          ]
      )

-- | Message containing the i18n data for the LHR - Version 1.
--
-- /See:/ 'newI18n' smart constructor.
newtype I18n = I18n
  { -- | Internationalized strings that are formatted to the locale in configSettings.
    rendererFormattedStrings :: (Core.Maybe RendererFormattedStrings)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'I18n' with the minimum fields required to make a request.
newI18n ::
  I18n
newI18n = I18n {rendererFormattedStrings = Core.Nothing}

instance Core.FromJSON I18n where
  parseJSON =
    Core.withObject
      "I18n"
      ( \o ->
          I18n
            Core.<$> (o Core..:? "rendererFormattedStrings")
      )

instance Core.ToJSON I18n where
  toJSON I18n {..} =
    Core.object
      ( Core.catMaybes
          [ ("rendererFormattedStrings" Core..=)
              Core.<$> rendererFormattedStrings
          ]
      )

-- | An audit\'s result object in a Lighthouse result.
--
-- /See:/ 'newLighthouseAuditResultV5' smart constructor.
data LighthouseAuditResultV5 = LighthouseAuditResultV5
  { -- | The description of the audit.
    description :: (Core.Maybe Core.Text),
    -- | Freeform details section of the audit.
    details :: (Core.Maybe LighthouseAuditResultV5_Details),
    -- | The value that should be displayed on the UI for this audit.
    displayValue :: (Core.Maybe Core.Text),
    -- | An error message from a thrown error inside the audit.
    errorMessage :: (Core.Maybe Core.Text),
    -- | An explanation of the errors in the audit.
    explanation :: (Core.Maybe Core.Text),
    -- | The audit\'s id.
    id :: (Core.Maybe Core.Text),
    -- | The unit of the numeric_value field. Used to format the numeric value for display.
    numericUnit :: (Core.Maybe Core.Text),
    -- | A numeric value that has a meaning specific to the audit, e.g. the number of nodes in the DOM or the timestamp of a specific load event. More information can be found in the audit details, if present.
    numericValue :: (Core.Maybe Core.Double),
    -- | The score of the audit, can be null.
    score :: (Core.Maybe Core.Value),
    -- | The enumerated score display mode.
    scoreDisplayMode :: (Core.Maybe Core.Text),
    -- | The human readable title.
    title :: (Core.Maybe Core.Text),
    -- | Possible warnings that occurred in the audit, can be null.
    warnings :: (Core.Maybe Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LighthouseAuditResultV5' with the minimum fields required to make a request.
newLighthouseAuditResultV5 ::
  LighthouseAuditResultV5
newLighthouseAuditResultV5 =
  LighthouseAuditResultV5
    { description = Core.Nothing,
      details = Core.Nothing,
      displayValue = Core.Nothing,
      errorMessage = Core.Nothing,
      explanation = Core.Nothing,
      id = Core.Nothing,
      numericUnit = Core.Nothing,
      numericValue = Core.Nothing,
      score = Core.Nothing,
      scoreDisplayMode = Core.Nothing,
      title = Core.Nothing,
      warnings = Core.Nothing
    }

instance Core.FromJSON LighthouseAuditResultV5 where
  parseJSON =
    Core.withObject
      "LighthouseAuditResultV5"
      ( \o ->
          LighthouseAuditResultV5
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "details")
            Core.<*> (o Core..:? "displayValue")
            Core.<*> (o Core..:? "errorMessage")
            Core.<*> (o Core..:? "explanation")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "numericUnit")
            Core.<*> (o Core..:? "numericValue")
            Core.<*> (o Core..:? "score")
            Core.<*> (o Core..:? "scoreDisplayMode")
            Core.<*> (o Core..:? "title")
            Core.<*> (o Core..:? "warnings")
      )

instance Core.ToJSON LighthouseAuditResultV5 where
  toJSON LighthouseAuditResultV5 {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("details" Core..=) Core.<$> details,
            ("displayValue" Core..=) Core.<$> displayValue,
            ("errorMessage" Core..=) Core.<$> errorMessage,
            ("explanation" Core..=) Core.<$> explanation,
            ("id" Core..=) Core.<$> id,
            ("numericUnit" Core..=) Core.<$> numericUnit,
            ("numericValue" Core..=) Core.<$> numericValue,
            ("score" Core..=) Core.<$> score,
            ("scoreDisplayMode" Core..=)
              Core.<$> scoreDisplayMode,
            ("title" Core..=) Core.<$> title,
            ("warnings" Core..=) Core.<$> warnings
          ]
      )

-- | Freeform details section of the audit.
--
-- /See:/ 'newLighthouseAuditResultV5_Details' smart constructor.
newtype LighthouseAuditResultV5_Details = LighthouseAuditResultV5_Details
  { -- | Properties of the object.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LighthouseAuditResultV5_Details' with the minimum fields required to make a request.
newLighthouseAuditResultV5_Details ::
  -- |  Properties of the object. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  LighthouseAuditResultV5_Details
newLighthouseAuditResultV5_Details additional =
  LighthouseAuditResultV5_Details {additional = additional}

instance
  Core.FromJSON
    LighthouseAuditResultV5_Details
  where
  parseJSON =
    Core.withObject
      "LighthouseAuditResultV5_Details"
      ( \o ->
          LighthouseAuditResultV5_Details
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON LighthouseAuditResultV5_Details where
  toJSON LighthouseAuditResultV5_Details {..} =
    Core.toJSON additional

-- | A Lighthouse category.
--
-- /See:/ 'newLighthouseCategoryV5' smart constructor.
data LighthouseCategoryV5 = LighthouseCategoryV5
  { -- | An array of references to all the audit members of this category.
    auditRefs :: (Core.Maybe [AuditRefs]),
    -- | A more detailed description of the category and its importance.
    description :: (Core.Maybe Core.Text),
    -- | The string identifier of the category.
    id :: (Core.Maybe Core.Text),
    -- | A description for the manual audits in the category.
    manualDescription :: (Core.Maybe Core.Text),
    -- | The overall score of the category, the weighted average of all its audits. (The category\'s score, can be null.)
    score :: (Core.Maybe Core.Value),
    -- | The human-friendly name of the category.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LighthouseCategoryV5' with the minimum fields required to make a request.
newLighthouseCategoryV5 ::
  LighthouseCategoryV5
newLighthouseCategoryV5 =
  LighthouseCategoryV5
    { auditRefs = Core.Nothing,
      description = Core.Nothing,
      id = Core.Nothing,
      manualDescription = Core.Nothing,
      score = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON LighthouseCategoryV5 where
  parseJSON =
    Core.withObject
      "LighthouseCategoryV5"
      ( \o ->
          LighthouseCategoryV5
            Core.<$> (o Core..:? "auditRefs")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "manualDescription")
            Core.<*> (o Core..:? "score")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON LighthouseCategoryV5 where
  toJSON LighthouseCategoryV5 {..} =
    Core.object
      ( Core.catMaybes
          [ ("auditRefs" Core..=) Core.<$> auditRefs,
            ("description" Core..=) Core.<$> description,
            ("id" Core..=) Core.<$> id,
            ("manualDescription" Core..=)
              Core.<$> manualDescription,
            ("score" Core..=) Core.<$> score,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | The Lighthouse result object.
--
-- /See:/ 'newLighthouseResultV5' smart constructor.
data LighthouseResultV5 = LighthouseResultV5
  { -- | Map of audits in the LHR.
    audits :: (Core.Maybe LighthouseResultV5_Audits),
    -- | Map of categories in the LHR.
    categories :: (Core.Maybe Categories),
    -- | Map of category groups in the LHR.
    categoryGroups :: (Core.Maybe LighthouseResultV5_CategoryGroups),
    -- | The configuration settings for this LHR.
    configSettings :: (Core.Maybe ConfigSettings),
    -- | Environment settings that were used when making this LHR.
    environment :: (Core.Maybe Environment),
    -- | The time that this run was fetched.
    fetchTime :: (Core.Maybe Core.Text),
    -- | The final resolved url that was audited.
    finalUrl :: (Core.Maybe Core.Text),
    -- | The internationalization strings that are required to render the LHR.
    i18n :: (Core.Maybe I18n),
    -- | The lighthouse version that was used to generate this LHR.
    lighthouseVersion :: (Core.Maybe Core.Text),
    -- | The original requested url.
    requestedUrl :: (Core.Maybe Core.Text),
    -- | List of all run warnings in the LHR. Will always output to at least @[]@.
    runWarnings :: (Core.Maybe [Core.Value]),
    -- | A top-level error message that, if present, indicates a serious enough problem that this Lighthouse result may need to be discarded.
    runtimeError :: (Core.Maybe RuntimeError),
    -- | The Stack Pack advice strings.
    stackPacks :: (Core.Maybe [StackPack]),
    -- | Timing information for this LHR.
    timing :: (Core.Maybe Timing),
    -- | The user agent that was used to run this LHR.
    userAgent :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LighthouseResultV5' with the minimum fields required to make a request.
newLighthouseResultV5 ::
  LighthouseResultV5
newLighthouseResultV5 =
  LighthouseResultV5
    { audits = Core.Nothing,
      categories = Core.Nothing,
      categoryGroups = Core.Nothing,
      configSettings = Core.Nothing,
      environment = Core.Nothing,
      fetchTime = Core.Nothing,
      finalUrl = Core.Nothing,
      i18n = Core.Nothing,
      lighthouseVersion = Core.Nothing,
      requestedUrl = Core.Nothing,
      runWarnings = Core.Nothing,
      runtimeError = Core.Nothing,
      stackPacks = Core.Nothing,
      timing = Core.Nothing,
      userAgent = Core.Nothing
    }

instance Core.FromJSON LighthouseResultV5 where
  parseJSON =
    Core.withObject
      "LighthouseResultV5"
      ( \o ->
          LighthouseResultV5
            Core.<$> (o Core..:? "audits")
            Core.<*> (o Core..:? "categories")
            Core.<*> (o Core..:? "categoryGroups")
            Core.<*> (o Core..:? "configSettings")
            Core.<*> (o Core..:? "environment")
            Core.<*> (o Core..:? "fetchTime")
            Core.<*> (o Core..:? "finalUrl")
            Core.<*> (o Core..:? "i18n")
            Core.<*> (o Core..:? "lighthouseVersion")
            Core.<*> (o Core..:? "requestedUrl")
            Core.<*> (o Core..:? "runWarnings")
            Core.<*> (o Core..:? "runtimeError")
            Core.<*> (o Core..:? "stackPacks")
            Core.<*> (o Core..:? "timing")
            Core.<*> (o Core..:? "userAgent")
      )

instance Core.ToJSON LighthouseResultV5 where
  toJSON LighthouseResultV5 {..} =
    Core.object
      ( Core.catMaybes
          [ ("audits" Core..=) Core.<$> audits,
            ("categories" Core..=) Core.<$> categories,
            ("categoryGroups" Core..=) Core.<$> categoryGroups,
            ("configSettings" Core..=) Core.<$> configSettings,
            ("environment" Core..=) Core.<$> environment,
            ("fetchTime" Core..=) Core.<$> fetchTime,
            ("finalUrl" Core..=) Core.<$> finalUrl,
            ("i18n" Core..=) Core.<$> i18n,
            ("lighthouseVersion" Core..=)
              Core.<$> lighthouseVersion,
            ("requestedUrl" Core..=) Core.<$> requestedUrl,
            ("runWarnings" Core..=) Core.<$> runWarnings,
            ("runtimeError" Core..=) Core.<$> runtimeError,
            ("stackPacks" Core..=) Core.<$> stackPacks,
            ("timing" Core..=) Core.<$> timing,
            ("userAgent" Core..=) Core.<$> userAgent
          ]
      )

-- | Map of audits in the LHR.
--
-- /See:/ 'newLighthouseResultV5_Audits' smart constructor.
newtype LighthouseResultV5_Audits = LighthouseResultV5_Audits
  { -- |
    additional :: (Core.HashMap Core.Text LighthouseAuditResultV5)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LighthouseResultV5_Audits' with the minimum fields required to make a request.
newLighthouseResultV5_Audits ::
  -- |  See 'additional'.
  Core.HashMap Core.Text LighthouseAuditResultV5 ->
  LighthouseResultV5_Audits
newLighthouseResultV5_Audits additional =
  LighthouseResultV5_Audits {additional = additional}

instance Core.FromJSON LighthouseResultV5_Audits where
  parseJSON =
    Core.withObject
      "LighthouseResultV5_Audits"
      ( \o ->
          LighthouseResultV5_Audits
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON LighthouseResultV5_Audits where
  toJSON LighthouseResultV5_Audits {..} =
    Core.toJSON additional

-- | Map of category groups in the LHR.
--
-- /See:/ 'newLighthouseResultV5_CategoryGroups' smart constructor.
newtype LighthouseResultV5_CategoryGroups = LighthouseResultV5_CategoryGroups
  { -- |
    additional :: (Core.HashMap Core.Text CategoryGroupV5)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LighthouseResultV5_CategoryGroups' with the minimum fields required to make a request.
newLighthouseResultV5_CategoryGroups ::
  -- |  See 'additional'.
  Core.HashMap Core.Text CategoryGroupV5 ->
  LighthouseResultV5_CategoryGroups
newLighthouseResultV5_CategoryGroups additional =
  LighthouseResultV5_CategoryGroups {additional = additional}

instance
  Core.FromJSON
    LighthouseResultV5_CategoryGroups
  where
  parseJSON =
    Core.withObject
      "LighthouseResultV5_CategoryGroups"
      ( \o ->
          LighthouseResultV5_CategoryGroups
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    LighthouseResultV5_CategoryGroups
  where
  toJSON LighthouseResultV5_CategoryGroups {..} =
    Core.toJSON additional

-- | The CrUX loading experience object that contains CrUX data breakdowns.
--
-- /See:/ 'newPagespeedApiLoadingExperienceV5' smart constructor.
data PagespeedApiLoadingExperienceV5 = PagespeedApiLoadingExperienceV5
  { -- | The url, pattern or origin which the metrics are on.
    id :: (Core.Maybe Core.Text),
    -- | The requested URL, which may differ from the resolved \"id\".
    initialUrl :: (Core.Maybe Core.Text),
    -- | The map of .
    metrics :: (Core.Maybe PagespeedApiLoadingExperienceV5_Metrics),
    -- | True if the result is an origin fallback from a page, false otherwise.
    originFallback :: (Core.Maybe Core.Bool),
    -- | The human readable speed \"category\" of the id.
    overallCategory :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PagespeedApiLoadingExperienceV5' with the minimum fields required to make a request.
newPagespeedApiLoadingExperienceV5 ::
  PagespeedApiLoadingExperienceV5
newPagespeedApiLoadingExperienceV5 =
  PagespeedApiLoadingExperienceV5
    { id = Core.Nothing,
      initialUrl = Core.Nothing,
      metrics = Core.Nothing,
      originFallback = Core.Nothing,
      overallCategory = Core.Nothing
    }

instance
  Core.FromJSON
    PagespeedApiLoadingExperienceV5
  where
  parseJSON =
    Core.withObject
      "PagespeedApiLoadingExperienceV5"
      ( \o ->
          PagespeedApiLoadingExperienceV5
            Core.<$> (o Core..:? "id")
            Core.<*> (o Core..:? "initial_url")
            Core.<*> (o Core..:? "metrics")
            Core.<*> (o Core..:? "origin_fallback")
            Core.<*> (o Core..:? "overall_category")
      )

instance Core.ToJSON PagespeedApiLoadingExperienceV5 where
  toJSON PagespeedApiLoadingExperienceV5 {..} =
    Core.object
      ( Core.catMaybes
          [ ("id" Core..=) Core.<$> id,
            ("initial_url" Core..=) Core.<$> initialUrl,
            ("metrics" Core..=) Core.<$> metrics,
            ("origin_fallback" Core..=) Core.<$> originFallback,
            ("overall_category" Core..=)
              Core.<$> overallCategory
          ]
      )

-- | The map of .
--
-- /See:/ 'newPagespeedApiLoadingExperienceV5_Metrics' smart constructor.
newtype PagespeedApiLoadingExperienceV5_Metrics = PagespeedApiLoadingExperienceV5_Metrics
  { -- |
    additional :: (Core.HashMap Core.Text UserPageLoadMetricV5)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PagespeedApiLoadingExperienceV5_Metrics' with the minimum fields required to make a request.
newPagespeedApiLoadingExperienceV5_Metrics ::
  -- |  See 'additional'.
  Core.HashMap Core.Text UserPageLoadMetricV5 ->
  PagespeedApiLoadingExperienceV5_Metrics
newPagespeedApiLoadingExperienceV5_Metrics additional =
  PagespeedApiLoadingExperienceV5_Metrics {additional = additional}

instance
  Core.FromJSON
    PagespeedApiLoadingExperienceV5_Metrics
  where
  parseJSON =
    Core.withObject
      "PagespeedApiLoadingExperienceV5_Metrics"
      ( \o ->
          PagespeedApiLoadingExperienceV5_Metrics
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    PagespeedApiLoadingExperienceV5_Metrics
  where
  toJSON PagespeedApiLoadingExperienceV5_Metrics {..} =
    Core.toJSON additional

-- | The Pagespeed API response object.
--
-- /See:/ 'newPagespeedApiPagespeedResponseV5' smart constructor.
data PagespeedApiPagespeedResponseV5 = PagespeedApiPagespeedResponseV5
  { -- | The UTC timestamp of this analysis.
    analysisUTCTimestamp :: (Core.Maybe Core.Text),
    -- | The captcha verify result
    captchaResult :: (Core.Maybe Core.Text),
    -- | Canonicalized and final URL for the document, after following page redirects (if any).
    id :: (Core.Maybe Core.Text),
    -- | Kind of result.
    kind :: (Core.Maybe Core.Text),
    -- | Lighthouse response for the audit url as an object.
    lighthouseResult :: (Core.Maybe LighthouseResultV5),
    -- | Metrics of end users\' page loading experience.
    loadingExperience :: (Core.Maybe PagespeedApiLoadingExperienceV5),
    -- | Metrics of the aggregated page loading experience of the origin
    originLoadingExperience :: (Core.Maybe PagespeedApiLoadingExperienceV5),
    -- | The version of PageSpeed used to generate these results.
    version :: (Core.Maybe PagespeedVersion)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PagespeedApiPagespeedResponseV5' with the minimum fields required to make a request.
newPagespeedApiPagespeedResponseV5 ::
  PagespeedApiPagespeedResponseV5
newPagespeedApiPagespeedResponseV5 =
  PagespeedApiPagespeedResponseV5
    { analysisUTCTimestamp = Core.Nothing,
      captchaResult = Core.Nothing,
      id = Core.Nothing,
      kind = Core.Nothing,
      lighthouseResult = Core.Nothing,
      loadingExperience = Core.Nothing,
      originLoadingExperience = Core.Nothing,
      version = Core.Nothing
    }

instance
  Core.FromJSON
    PagespeedApiPagespeedResponseV5
  where
  parseJSON =
    Core.withObject
      "PagespeedApiPagespeedResponseV5"
      ( \o ->
          PagespeedApiPagespeedResponseV5
            Core.<$> (o Core..:? "analysisUTCTimestamp")
            Core.<*> (o Core..:? "captchaResult")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "lighthouseResult")
            Core.<*> (o Core..:? "loadingExperience")
            Core.<*> (o Core..:? "originLoadingExperience")
            Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON PagespeedApiPagespeedResponseV5 where
  toJSON PagespeedApiPagespeedResponseV5 {..} =
    Core.object
      ( Core.catMaybes
          [ ("analysisUTCTimestamp" Core..=)
              Core.<$> analysisUTCTimestamp,
            ("captchaResult" Core..=) Core.<$> captchaResult,
            ("id" Core..=) Core.<$> id,
            ("kind" Core..=) Core.<$> kind,
            ("lighthouseResult" Core..=)
              Core.<$> lighthouseResult,
            ("loadingExperience" Core..=)
              Core.<$> loadingExperience,
            ("originLoadingExperience" Core..=)
              Core.<$> originLoadingExperience,
            ("version" Core..=) Core.<$> version
          ]
      )

-- | The Pagespeed Version object.
--
-- /See:/ 'newPagespeedVersion' smart constructor.
data PagespeedVersion = PagespeedVersion
  { -- | The major version number of PageSpeed used to generate these results.
    major :: (Core.Maybe Core.Text),
    -- | The minor version number of PageSpeed used to generate these results.
    minor :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PagespeedVersion' with the minimum fields required to make a request.
newPagespeedVersion ::
  PagespeedVersion
newPagespeedVersion =
  PagespeedVersion {major = Core.Nothing, minor = Core.Nothing}

instance Core.FromJSON PagespeedVersion where
  parseJSON =
    Core.withObject
      "PagespeedVersion"
      ( \o ->
          PagespeedVersion
            Core.<$> (o Core..:? "major") Core.<*> (o Core..:? "minor")
      )

instance Core.ToJSON PagespeedVersion where
  toJSON PagespeedVersion {..} =
    Core.object
      ( Core.catMaybes
          [ ("major" Core..=) Core.<$> major,
            ("minor" Core..=) Core.<$> minor
          ]
      )

-- | Message holding the formatted strings used in the renderer.
--
-- /See:/ 'newRendererFormattedStrings' smart constructor.
data RendererFormattedStrings = RendererFormattedStrings
  { -- | The tooltip text on an expandable chevron icon.
    auditGroupExpandTooltip :: (Core.Maybe Core.Text),
    -- | Text link pointing to the Lighthouse scoring calculator. This link immediately follows a sentence stating the performance score is calculated from the perf metrics.
    calculatorLink :: (Core.Maybe Core.Text),
    -- | The label for the initial request in a critical request chain.
    crcInitialNavigation :: (Core.Maybe Core.Text),
    -- | The label for values shown in the summary of critical request chains.
    crcLongestDurationLabel :: (Core.Maybe Core.Text),
    -- | Option in a dropdown menu that copies the Lighthouse JSON object to the system clipboard.
    dropdownCopyJSON :: (Core.Maybe Core.Text),
    -- | Option in a dropdown menu that toggles the themeing of the report between Light(default) and Dark themes.
    dropdownDarkTheme :: (Core.Maybe Core.Text),
    -- | Option in a dropdown menu that opens a full Lighthouse report in a print dialog.
    dropdownPrintExpanded :: (Core.Maybe Core.Text),
    -- | Option in a dropdown menu that opens a small, summary report in a print dialog.
    dropdownPrintSummary :: (Core.Maybe Core.Text),
    -- | Option in a dropdown menu that saves the current report as a new GitHub Gist.
    dropdownSaveGist :: (Core.Maybe Core.Text),
    -- | Option in a dropdown menu that saves the Lighthouse report HTML locally to the system as a \'.html\' file.
    dropdownSaveHTML :: (Core.Maybe Core.Text),
    -- | Option in a dropdown menu that saves the Lighthouse JSON object to the local system as a \'.json\' file.
    dropdownSaveJSON :: (Core.Maybe Core.Text),
    -- | Option in a dropdown menu that opens the current report in the Lighthouse Viewer Application.
    dropdownViewer :: (Core.Maybe Core.Text),
    -- | The label shown next to an audit or metric that has had an error.
    errorLabel :: (Core.Maybe Core.Text),
    -- | The error string shown next to an erroring audit.
    errorMissingAuditInfo :: (Core.Maybe Core.Text),
    -- | Label for button to create an issue against the Lighthouse GitHub project.
    footerIssue :: (Core.Maybe Core.Text),
    -- | The title of the lab data performance category.
    labDataTitle :: (Core.Maybe Core.Text),
    -- | The disclaimer shown under performance explaining that the network can vary.
    lsPerformanceCategoryDescription :: (Core.Maybe Core.Text),
    -- | The heading shown above a list of audits that were not computerd in the run.
    manualAuditsGroupTitle :: (Core.Maybe Core.Text),
    -- | The heading shown above a list of audits that do not apply to a page.
    notApplicableAuditsGroupTitle :: (Core.Maybe Core.Text),
    -- | The heading for the estimated page load savings opportunity of an audit.
    opportunityResourceColumnLabel :: (Core.Maybe Core.Text),
    -- | The heading for the estimated page load savings of opportunity audits.
    opportunitySavingsColumnLabel :: (Core.Maybe Core.Text),
    -- | The heading that is shown above a list of audits that are passing.
    passedAuditsGroupTitle :: (Core.Maybe Core.Text),
    -- | Descriptive explanation for emulation setting when emulating a generic desktop form factor, as opposed to a mobile-device like form factor.
    runtimeDesktopEmulation :: (Core.Maybe Core.Text),
    -- | Descriptive explanation for emulation setting when emulating a Nexus 5X mobile device.
    runtimeMobileEmulation :: (Core.Maybe Core.Text),
    -- | Descriptive explanation for emulation setting when no device emulation is set.
    runtimeNoEmulation :: (Core.Maybe Core.Text),
    -- | Label for a row in a table that shows the version of the Axe library used
    runtimeSettingsAxeVersion :: (Core.Maybe Core.Text),
    -- | Label for a row in a table that shows the estimated CPU power of the machine running Lighthouse. Example row values: 532, 1492, 783.
    runtimeSettingsBenchmark :: (Core.Maybe Core.Text),
    -- | Label for a row in a table that describes the CPU throttling conditions that were used during a Lighthouse run, if any.
    runtimeSettingsCPUThrottling :: (Core.Maybe Core.Text),
    -- | Label for a row in a table that shows in what tool Lighthouse is being run (e.g. The lighthouse CLI, Chrome DevTools, Lightrider, WebPageTest, etc).
    runtimeSettingsChannel :: (Core.Maybe Core.Text),
    -- | Label for a row in a table that describes the kind of device that was emulated for the Lighthouse run. Example values for row elements: \'No Emulation\', \'Emulated Desktop\', etc.
    runtimeSettingsDevice :: (Core.Maybe Core.Text),
    -- | Label for a row in a table that shows the time at which a Lighthouse run was conducted; formatted as a timestamp, e.g. Jan 1, 1970 12:00 AM UTC.
    runtimeSettingsFetchTime :: (Core.Maybe Core.Text),
    -- | Label for a row in a table that describes the network throttling conditions that were used during a Lighthouse run, if any.
    runtimeSettingsNetworkThrottling :: (Core.Maybe Core.Text),
    -- | Title of the Runtime settings table in a Lighthouse report. Runtime settings are the environment configurations that a specific report used at auditing time.
    runtimeSettingsTitle :: (Core.Maybe Core.Text),
    -- | Label for a row in a table that shows the User Agent that was detected on the Host machine that ran Lighthouse.
    runtimeSettingsUA :: (Core.Maybe Core.Text),
    -- | Label for a row in a table that shows the User Agent that was used to send out all network requests during the Lighthouse run.
    runtimeSettingsUANetwork :: (Core.Maybe Core.Text),
    -- | Label for a row in a table that shows the URL that was audited during a Lighthouse run.
    runtimeSettingsUrl :: (Core.Maybe Core.Text),
    -- | Descriptive explanation for a runtime setting that is set to an unknown value.
    runtimeUnknown :: (Core.Maybe Core.Text),
    -- | The label that explains the score gauges scale (0-49, 50-89, 90-100).
    scorescaleLabel :: (Core.Maybe Core.Text),
    -- | Label preceding a radio control for filtering the list of audits. The radio choices are various performance metrics (FCP, LCP, TBT), and if chosen, the audits in the report are hidden if they are not relevant to the selected metric.
    showRelevantAudits :: (Core.Maybe Core.Text),
    -- | The label for the button to show only a few lines of a snippet
    snippetCollapseButtonLabel :: (Core.Maybe Core.Text),
    -- | The label for the button to show all lines of a snippet
    snippetExpandButtonLabel :: (Core.Maybe Core.Text),
    -- | This label is for a filter checkbox above a table of items
    thirdPartyResourcesLabel :: (Core.Maybe Core.Text),
    -- | Descriptive explanation for environment throttling that was provided by the runtime environment instead of provided by Lighthouse throttling.
    throttlingProvided :: (Core.Maybe Core.Text),
    -- | The label shown preceding important warnings that may have invalidated an entire report.
    toplevelWarningsMessage :: (Core.Maybe Core.Text),
    -- | The disclaimer shown below a performance metric value.
    varianceDisclaimer :: (Core.Maybe Core.Text),
    -- | Label for a button that opens the Treemap App
    viewTreemapLabel :: (Core.Maybe Core.Text),
    -- | The heading that is shown above a list of audits that have warnings
    warningAuditsGroupTitle :: (Core.Maybe Core.Text),
    -- | The label shown above a bulleted list of warnings.
    warningHeader :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RendererFormattedStrings' with the minimum fields required to make a request.
newRendererFormattedStrings ::
  RendererFormattedStrings
newRendererFormattedStrings =
  RendererFormattedStrings
    { auditGroupExpandTooltip = Core.Nothing,
      calculatorLink = Core.Nothing,
      crcInitialNavigation = Core.Nothing,
      crcLongestDurationLabel = Core.Nothing,
      dropdownCopyJSON = Core.Nothing,
      dropdownDarkTheme = Core.Nothing,
      dropdownPrintExpanded = Core.Nothing,
      dropdownPrintSummary = Core.Nothing,
      dropdownSaveGist = Core.Nothing,
      dropdownSaveHTML = Core.Nothing,
      dropdownSaveJSON = Core.Nothing,
      dropdownViewer = Core.Nothing,
      errorLabel = Core.Nothing,
      errorMissingAuditInfo = Core.Nothing,
      footerIssue = Core.Nothing,
      labDataTitle = Core.Nothing,
      lsPerformanceCategoryDescription = Core.Nothing,
      manualAuditsGroupTitle = Core.Nothing,
      notApplicableAuditsGroupTitle = Core.Nothing,
      opportunityResourceColumnLabel = Core.Nothing,
      opportunitySavingsColumnLabel = Core.Nothing,
      passedAuditsGroupTitle = Core.Nothing,
      runtimeDesktopEmulation = Core.Nothing,
      runtimeMobileEmulation = Core.Nothing,
      runtimeNoEmulation = Core.Nothing,
      runtimeSettingsAxeVersion = Core.Nothing,
      runtimeSettingsBenchmark = Core.Nothing,
      runtimeSettingsCPUThrottling = Core.Nothing,
      runtimeSettingsChannel = Core.Nothing,
      runtimeSettingsDevice = Core.Nothing,
      runtimeSettingsFetchTime = Core.Nothing,
      runtimeSettingsNetworkThrottling = Core.Nothing,
      runtimeSettingsTitle = Core.Nothing,
      runtimeSettingsUA = Core.Nothing,
      runtimeSettingsUANetwork = Core.Nothing,
      runtimeSettingsUrl = Core.Nothing,
      runtimeUnknown = Core.Nothing,
      scorescaleLabel = Core.Nothing,
      showRelevantAudits = Core.Nothing,
      snippetCollapseButtonLabel = Core.Nothing,
      snippetExpandButtonLabel = Core.Nothing,
      thirdPartyResourcesLabel = Core.Nothing,
      throttlingProvided = Core.Nothing,
      toplevelWarningsMessage = Core.Nothing,
      varianceDisclaimer = Core.Nothing,
      viewTreemapLabel = Core.Nothing,
      warningAuditsGroupTitle = Core.Nothing,
      warningHeader = Core.Nothing
    }

instance Core.FromJSON RendererFormattedStrings where
  parseJSON =
    Core.withObject
      "RendererFormattedStrings"
      ( \o ->
          RendererFormattedStrings
            Core.<$> (o Core..:? "auditGroupExpandTooltip")
            Core.<*> (o Core..:? "calculatorLink")
            Core.<*> (o Core..:? "crcInitialNavigation")
            Core.<*> (o Core..:? "crcLongestDurationLabel")
            Core.<*> (o Core..:? "dropdownCopyJSON")
            Core.<*> (o Core..:? "dropdownDarkTheme")
            Core.<*> (o Core..:? "dropdownPrintExpanded")
            Core.<*> (o Core..:? "dropdownPrintSummary")
            Core.<*> (o Core..:? "dropdownSaveGist")
            Core.<*> (o Core..:? "dropdownSaveHTML")
            Core.<*> (o Core..:? "dropdownSaveJSON")
            Core.<*> (o Core..:? "dropdownViewer")
            Core.<*> (o Core..:? "errorLabel")
            Core.<*> (o Core..:? "errorMissingAuditInfo")
            Core.<*> (o Core..:? "footerIssue")
            Core.<*> (o Core..:? "labDataTitle")
            Core.<*> (o Core..:? "lsPerformanceCategoryDescription")
            Core.<*> (o Core..:? "manualAuditsGroupTitle")
            Core.<*> (o Core..:? "notApplicableAuditsGroupTitle")
            Core.<*> (o Core..:? "opportunityResourceColumnLabel")
            Core.<*> (o Core..:? "opportunitySavingsColumnLabel")
            Core.<*> (o Core..:? "passedAuditsGroupTitle")
            Core.<*> (o Core..:? "runtimeDesktopEmulation")
            Core.<*> (o Core..:? "runtimeMobileEmulation")
            Core.<*> (o Core..:? "runtimeNoEmulation")
            Core.<*> (o Core..:? "runtimeSettingsAxeVersion")
            Core.<*> (o Core..:? "runtimeSettingsBenchmark")
            Core.<*> (o Core..:? "runtimeSettingsCPUThrottling")
            Core.<*> (o Core..:? "runtimeSettingsChannel")
            Core.<*> (o Core..:? "runtimeSettingsDevice")
            Core.<*> (o Core..:? "runtimeSettingsFetchTime")
            Core.<*> (o Core..:? "runtimeSettingsNetworkThrottling")
            Core.<*> (o Core..:? "runtimeSettingsTitle")
            Core.<*> (o Core..:? "runtimeSettingsUA")
            Core.<*> (o Core..:? "runtimeSettingsUANetwork")
            Core.<*> (o Core..:? "runtimeSettingsUrl")
            Core.<*> (o Core..:? "runtimeUnknown")
            Core.<*> (o Core..:? "scorescaleLabel")
            Core.<*> (o Core..:? "showRelevantAudits")
            Core.<*> (o Core..:? "snippetCollapseButtonLabel")
            Core.<*> (o Core..:? "snippetExpandButtonLabel")
            Core.<*> (o Core..:? "thirdPartyResourcesLabel")
            Core.<*> (o Core..:? "throttlingProvided")
            Core.<*> (o Core..:? "toplevelWarningsMessage")
            Core.<*> (o Core..:? "varianceDisclaimer")
            Core.<*> (o Core..:? "viewTreemapLabel")
            Core.<*> (o Core..:? "warningAuditsGroupTitle")
            Core.<*> (o Core..:? "warningHeader")
      )

instance Core.ToJSON RendererFormattedStrings where
  toJSON RendererFormattedStrings {..} =
    Core.object
      ( Core.catMaybes
          [ ("auditGroupExpandTooltip" Core..=)
              Core.<$> auditGroupExpandTooltip,
            ("calculatorLink" Core..=) Core.<$> calculatorLink,
            ("crcInitialNavigation" Core..=)
              Core.<$> crcInitialNavigation,
            ("crcLongestDurationLabel" Core..=)
              Core.<$> crcLongestDurationLabel,
            ("dropdownCopyJSON" Core..=)
              Core.<$> dropdownCopyJSON,
            ("dropdownDarkTheme" Core..=)
              Core.<$> dropdownDarkTheme,
            ("dropdownPrintExpanded" Core..=)
              Core.<$> dropdownPrintExpanded,
            ("dropdownPrintSummary" Core..=)
              Core.<$> dropdownPrintSummary,
            ("dropdownSaveGist" Core..=)
              Core.<$> dropdownSaveGist,
            ("dropdownSaveHTML" Core..=)
              Core.<$> dropdownSaveHTML,
            ("dropdownSaveJSON" Core..=)
              Core.<$> dropdownSaveJSON,
            ("dropdownViewer" Core..=) Core.<$> dropdownViewer,
            ("errorLabel" Core..=) Core.<$> errorLabel,
            ("errorMissingAuditInfo" Core..=)
              Core.<$> errorMissingAuditInfo,
            ("footerIssue" Core..=) Core.<$> footerIssue,
            ("labDataTitle" Core..=) Core.<$> labDataTitle,
            ("lsPerformanceCategoryDescription" Core..=)
              Core.<$> lsPerformanceCategoryDescription,
            ("manualAuditsGroupTitle" Core..=)
              Core.<$> manualAuditsGroupTitle,
            ("notApplicableAuditsGroupTitle" Core..=)
              Core.<$> notApplicableAuditsGroupTitle,
            ("opportunityResourceColumnLabel" Core..=)
              Core.<$> opportunityResourceColumnLabel,
            ("opportunitySavingsColumnLabel" Core..=)
              Core.<$> opportunitySavingsColumnLabel,
            ("passedAuditsGroupTitle" Core..=)
              Core.<$> passedAuditsGroupTitle,
            ("runtimeDesktopEmulation" Core..=)
              Core.<$> runtimeDesktopEmulation,
            ("runtimeMobileEmulation" Core..=)
              Core.<$> runtimeMobileEmulation,
            ("runtimeNoEmulation" Core..=)
              Core.<$> runtimeNoEmulation,
            ("runtimeSettingsAxeVersion" Core..=)
              Core.<$> runtimeSettingsAxeVersion,
            ("runtimeSettingsBenchmark" Core..=)
              Core.<$> runtimeSettingsBenchmark,
            ("runtimeSettingsCPUThrottling" Core..=)
              Core.<$> runtimeSettingsCPUThrottling,
            ("runtimeSettingsChannel" Core..=)
              Core.<$> runtimeSettingsChannel,
            ("runtimeSettingsDevice" Core..=)
              Core.<$> runtimeSettingsDevice,
            ("runtimeSettingsFetchTime" Core..=)
              Core.<$> runtimeSettingsFetchTime,
            ("runtimeSettingsNetworkThrottling" Core..=)
              Core.<$> runtimeSettingsNetworkThrottling,
            ("runtimeSettingsTitle" Core..=)
              Core.<$> runtimeSettingsTitle,
            ("runtimeSettingsUA" Core..=)
              Core.<$> runtimeSettingsUA,
            ("runtimeSettingsUANetwork" Core..=)
              Core.<$> runtimeSettingsUANetwork,
            ("runtimeSettingsUrl" Core..=)
              Core.<$> runtimeSettingsUrl,
            ("runtimeUnknown" Core..=) Core.<$> runtimeUnknown,
            ("scorescaleLabel" Core..=) Core.<$> scorescaleLabel,
            ("showRelevantAudits" Core..=)
              Core.<$> showRelevantAudits,
            ("snippetCollapseButtonLabel" Core..=)
              Core.<$> snippetCollapseButtonLabel,
            ("snippetExpandButtonLabel" Core..=)
              Core.<$> snippetExpandButtonLabel,
            ("thirdPartyResourcesLabel" Core..=)
              Core.<$> thirdPartyResourcesLabel,
            ("throttlingProvided" Core..=)
              Core.<$> throttlingProvided,
            ("toplevelWarningsMessage" Core..=)
              Core.<$> toplevelWarningsMessage,
            ("varianceDisclaimer" Core..=)
              Core.<$> varianceDisclaimer,
            ("viewTreemapLabel" Core..=)
              Core.<$> viewTreemapLabel,
            ("warningAuditsGroupTitle" Core..=)
              Core.<$> warningAuditsGroupTitle,
            ("warningHeader" Core..=) Core.<$> warningHeader
          ]
      )

-- | Message containing a runtime error config.
--
-- /See:/ 'newRuntimeError' smart constructor.
data RuntimeError = RuntimeError
  { -- | The enumerated Lighthouse Error code.
    code :: (Core.Maybe Core.Text),
    -- | A human readable message explaining the error code.
    message :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RuntimeError' with the minimum fields required to make a request.
newRuntimeError ::
  RuntimeError
newRuntimeError = RuntimeError {code = Core.Nothing, message = Core.Nothing}

instance Core.FromJSON RuntimeError where
  parseJSON =
    Core.withObject
      "RuntimeError"
      ( \o ->
          RuntimeError
            Core.<$> (o Core..:? "code") Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON RuntimeError where
  toJSON RuntimeError {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("message" Core..=) Core.<$> message
          ]
      )

-- | Message containing Stack Pack information.
--
-- /See:/ 'newStackPack' smart constructor.
data StackPack = StackPack
  { -- | The stack pack advice strings.
    descriptions :: (Core.Maybe StackPack_Descriptions),
    -- | The stack pack icon data uri.
    iconDataURL :: (Core.Maybe Core.Text),
    -- | The stack pack id.
    id :: (Core.Maybe Core.Text),
    -- | The stack pack title.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StackPack' with the minimum fields required to make a request.
newStackPack ::
  StackPack
newStackPack =
  StackPack
    { descriptions = Core.Nothing,
      iconDataURL = Core.Nothing,
      id = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON StackPack where
  parseJSON =
    Core.withObject
      "StackPack"
      ( \o ->
          StackPack
            Core.<$> (o Core..:? "descriptions")
            Core.<*> (o Core..:? "iconDataURL")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON StackPack where
  toJSON StackPack {..} =
    Core.object
      ( Core.catMaybes
          [ ("descriptions" Core..=) Core.<$> descriptions,
            ("iconDataURL" Core..=) Core.<$> iconDataURL,
            ("id" Core..=) Core.<$> id,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | The stack pack advice strings.
--
-- /See:/ 'newStackPack_Descriptions' smart constructor.
newtype StackPack_Descriptions = StackPack_Descriptions
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StackPack_Descriptions' with the minimum fields required to make a request.
newStackPack_Descriptions ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  StackPack_Descriptions
newStackPack_Descriptions additional =
  StackPack_Descriptions {additional = additional}

instance Core.FromJSON StackPack_Descriptions where
  parseJSON =
    Core.withObject
      "StackPack_Descriptions"
      ( \o ->
          StackPack_Descriptions
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON StackPack_Descriptions where
  toJSON StackPack_Descriptions {..} =
    Core.toJSON additional

-- | Message containing the performance timing data for the Lighthouse run.
--
-- /See:/ 'newTiming' smart constructor.
newtype Timing = Timing
  { -- | The total duration of Lighthouse\'s run.
    total :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Timing' with the minimum fields required to make a request.
newTiming ::
  Timing
newTiming = Timing {total = Core.Nothing}

instance Core.FromJSON Timing where
  parseJSON =
    Core.withObject
      "Timing"
      (\o -> Timing Core.<$> (o Core..:? "total"))

instance Core.ToJSON Timing where
  toJSON Timing {..} =
    Core.object
      (Core.catMaybes [("total" Core..=) Core.<$> total])

-- | A CrUX metric object for a single metric and form factor.
--
-- /See:/ 'newUserPageLoadMetricV5' smart constructor.
data UserPageLoadMetricV5 = UserPageLoadMetricV5
  { -- | The category of the specific time metric.
    category :: (Core.Maybe Core.Text),
    -- | Metric distributions. Proportions should sum up to 1.
    distributions :: (Core.Maybe [Bucket]),
    -- | Identifies the form factor of the metric being collected.
    formFactor :: (Core.Maybe Core.Text),
    -- | The median number of the metric, in millisecond.
    median :: (Core.Maybe Core.Int32),
    -- | Identifies the type of the metric.
    metricId :: (Core.Maybe Core.Text),
    -- | We use this field to store certain percentile value for this metric. For v4, this field contains pc50. For v5, this field contains pc90.
    percentile :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserPageLoadMetricV5' with the minimum fields required to make a request.
newUserPageLoadMetricV5 ::
  UserPageLoadMetricV5
newUserPageLoadMetricV5 =
  UserPageLoadMetricV5
    { category = Core.Nothing,
      distributions = Core.Nothing,
      formFactor = Core.Nothing,
      median = Core.Nothing,
      metricId = Core.Nothing,
      percentile = Core.Nothing
    }

instance Core.FromJSON UserPageLoadMetricV5 where
  parseJSON =
    Core.withObject
      "UserPageLoadMetricV5"
      ( \o ->
          UserPageLoadMetricV5
            Core.<$> (o Core..:? "category")
            Core.<*> (o Core..:? "distributions")
            Core.<*> (o Core..:? "formFactor")
            Core.<*> (o Core..:? "median")
            Core.<*> (o Core..:? "metricId")
            Core.<*> (o Core..:? "percentile")
      )

instance Core.ToJSON UserPageLoadMetricV5 where
  toJSON UserPageLoadMetricV5 {..} =
    Core.object
      ( Core.catMaybes
          [ ("category" Core..=) Core.<$> category,
            ("distributions" Core..=) Core.<$> distributions,
            ("formFactor" Core..=) Core.<$> formFactor,
            ("median" Core..=) Core.<$> median,
            ("metricId" Core..=) Core.<$> metricId,
            ("percentile" Core..=) Core.<$> percentile
          ]
      )
