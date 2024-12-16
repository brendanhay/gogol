{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Books.Onboarding.ListCategoryVolumes
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List available volumes under categories for onboarding experience.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.onboarding.listCategoryVolumes@.
module Gogol.Books.Onboarding.ListCategoryVolumes
    (
    -- * Resource
      BooksOnboardingListCategoryVolumesResource

    -- ** Constructing a Request
    , BooksOnboardingListCategoryVolumes (..)
    , newBooksOnboardingListCategoryVolumes
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Books.Types

-- | A resource alias for @books.onboarding.listCategoryVolumes@ method which the
-- 'BooksOnboardingListCategoryVolumes' request conforms to.
type BooksOnboardingListCategoryVolumesResource =
     "books" Core.:>
       "v1" Core.:>
         "onboarding" Core.:>
           "listCategoryVolumes" Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParams "categoryId" Core.Text Core.:>
                     Core.QueryParam "locale" Core.Text Core.:>
                       Core.QueryParam "maxAllowedMaturityRating"
                         OnboardingListCategoryVolumesMaxAllowedMaturityRating
                         Core.:>
                         Core.QueryParam "pageSize" Core.Word32 Core.:>
                           Core.QueryParam "pageToken" Core.Text Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text
                                 Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.Get '[Core.JSON] Volume2

-- | List available volumes under categories for onboarding experience.
--
-- /See:/ 'newBooksOnboardingListCategoryVolumes' smart constructor.
data BooksOnboardingListCategoryVolumes = BooksOnboardingListCategoryVolumes
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | List of category ids requested.
    , categoryId :: (Core.Maybe [Core.Text])
      -- | ISO-639-1 language and ISO-3166-1 country code. Default is en-US if unset.
    , locale :: (Core.Maybe Core.Text)
      -- | The maximum allowed maturity rating of returned volumes. Books with a higher maturity rating are filtered out.
    , maxAllowedMaturityRating :: (Core.Maybe OnboardingListCategoryVolumesMaxAllowedMaturityRating)
      -- | Number of maximum results per page to be included in the response.
    , pageSize :: (Core.Maybe Core.Word32)
      -- | The value of the nextToken from the previous page.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BooksOnboardingListCategoryVolumes' with the minimum fields required to make a request.
newBooksOnboardingListCategoryVolumes 
    ::  BooksOnboardingListCategoryVolumes
newBooksOnboardingListCategoryVolumes =
  BooksOnboardingListCategoryVolumes
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , categoryId = Core.Nothing
    , locale = Core.Nothing
    , maxAllowedMaturityRating = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           BooksOnboardingListCategoryVolumes
         where
        type Rs BooksOnboardingListCategoryVolumes = Volume2
        type Scopes BooksOnboardingListCategoryVolumes =
             '[Books'FullControl]
        requestClient BooksOnboardingListCategoryVolumes{..}
          = go xgafv accessToken callback
              (categoryId Core.^. Core._Default)
              locale
              maxAllowedMaturityRating
              pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              booksService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           BooksOnboardingListCategoryVolumesResource)
                      Core.mempty

