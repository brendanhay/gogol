{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AcceleratedMobilePageUrl
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of AMP URLs (and equivalent AMP Cache URLs) for a given list of public URL(s).
--
-- /See:/ <https://developers.google.com/amp/cache/ Accelerated Mobile Pages (AMP) URL API Reference>
module Gogol.AcceleratedMobilePageUrl
    (
    -- * Configuration
      acceleratedMobilePageUrlService

    -- * Resources

    -- ** acceleratedmobilepageurl.ampUrls.batchGet
    , AcceleratedMobilePageUrlAmpUrlsBatchGetResource
    , newAcceleratedMobilePageUrlAmpUrlsBatchGet
    , AcceleratedMobilePageUrlAmpUrlsBatchGet

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** AmpUrl
    , AmpUrl (..)
    , newAmpUrl

    -- ** AmpUrlError
    , AmpUrlError (..)
    , newAmpUrlError

    -- ** AmpUrlError_ErrorCode
    , AmpUrlError_ErrorCode (..)

    -- ** BatchGetAmpUrlsRequest
    , BatchGetAmpUrlsRequest (..)
    , newBatchGetAmpUrlsRequest

    -- ** BatchGetAmpUrlsRequest_LookupStrategy
    , BatchGetAmpUrlsRequest_LookupStrategy (..)

    -- ** BatchGetAmpUrlsResponse
    , BatchGetAmpUrlsResponse (..)
    , newBatchGetAmpUrlsResponse
    ) where

import Gogol.AcceleratedMobilePageUrl.AmpUrls.BatchGet
import Gogol.AcceleratedMobilePageUrl.Types
