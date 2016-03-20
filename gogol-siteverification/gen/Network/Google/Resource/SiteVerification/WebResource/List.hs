{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.SiteVerification.WebResource.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the list of your verified websites and domains.
--
-- /See:/ <https://developers.google.com/site-verification/ Google Site Verification API Reference> for @siteVerification.webResource.list@.
module Network.Google.Resource.SiteVerification.WebResource.List
    (
    -- * REST Resource
      WebResourceListResource

    -- * Creating a Request
    , webResourceList
    , WebResourceList

    ) where

import           Network.Google.Prelude
import           Network.Google.SiteVerification.Types

-- | A resource alias for @siteVerification.webResource.list@ method which the
-- 'WebResourceList' request conforms to.
type WebResourceListResource =
     "siteVerification" :>
       "v1" :>
         "webResource" :>
           QueryParam "alt" AltJSON :>
             Get '[JSON] SiteVerificationWebResourceListResponse

-- | Get the list of your verified websites and domains.
--
-- /See:/ 'webResourceList' smart constructor.
data WebResourceList =
    WebResourceList
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'WebResourceList' with the minimum fields required to make a request.
--
webResourceList
    :: WebResourceList
webResourceList = WebResourceList

instance GoogleRequest WebResourceList where
        type Rs WebResourceList =
             SiteVerificationWebResourceListResponse
        requestClient WebResourceList{}
          = go (Just AltJSON) siteVerificationService
          where go
                  = buildClient
                      (Proxy :: Proxy WebResourceListResource)
                      mempty
