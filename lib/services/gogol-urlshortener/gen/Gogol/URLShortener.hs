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
-- Module      : Gogol.URLShortener
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lets you create, inspect, and manage goo.gl short URLs
--
-- /See:/ <https://developers.google.com/url-shortener/v1/getting_started URL Shortener API Reference>
module Gogol.URLShortener
    (
    -- * Configuration
      uRLShortenerService

    -- * OAuth Scopes
    , uRLShortenerScope

    -- * Resources

    -- ** urlshortener.url.get
    , URLShortenerUrlGetResource
    , newURLShortenerUrlGet
    , URLShortenerUrlGet

    -- ** urlshortener.url.insert
    , URLShortenerUrlInsertResource
    , newURLShortenerUrlInsert
    , URLShortenerUrlInsert

    -- ** urlshortener.url.list
    , URLShortenerUrlListResource
    , newURLShortenerUrlList
    , URLShortenerUrlList

    -- * Types

    -- ** AnalyticsSnapshot
    , AnalyticsSnapshot (..)
    , newAnalyticsSnapshot

    -- ** AnalyticsSummary
    , AnalyticsSummary (..)
    , newAnalyticsSummary

    -- ** StringCount
    , StringCount (..)
    , newStringCount

    -- ** Url
    , Url (..)
    , newUrl

    -- ** UrlHistory
    , UrlHistory (..)
    , newUrlHistory

    -- ** UrlGetProjection
    , UrlGetProjection (..)

    -- ** UrlListProjection
    , UrlListProjection (..)
    ) where

import Gogol.URLShortener.Types
import Gogol.URLShortener.Url.Get
import Gogol.URLShortener.Url.Insert
import Gogol.URLShortener.Url.List
