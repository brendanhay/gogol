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
-- Module      : Network.Google.Resource.SiteVerification.WebResource.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the most current data for a website or domain.
--
-- /See:/ <https://developers.google.com/site-verification/ Google Site Verification API Reference> for @siteVerification.webResource.get@.
module Network.Google.Resource.SiteVerification.WebResource.Get
    (
    -- * REST Resource
      WebResourceGetResource

    -- * Creating a Request
    , webResourceGet
    , WebResourceGet

    -- * Request Lenses
    , wrgId
    ) where

import           Network.Google.Prelude
import           Network.Google.SiteVerification.Types

-- | A resource alias for @siteVerification.webResource.get@ method which the
-- 'WebResourceGet' request conforms to.
type WebResourceGetResource =
     "siteVerification" :>
       "v1" :>
         "webResource" :>
           Capture "id" Text :>
             QueryParam "alt" AltJSON :>
               Get '[JSON] SiteVerificationWebResourceResource

-- | Get the most current data for a website or domain.
--
-- /See:/ 'webResourceGet' smart constructor.
newtype WebResourceGet =
  WebResourceGet'
    { _wrgId :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'WebResourceGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wrgId'
webResourceGet
    :: Text -- ^ 'wrgId'
    -> WebResourceGet
webResourceGet pWrgId_ = WebResourceGet' {_wrgId = pWrgId_}

-- | The id of a verified site or domain.
wrgId :: Lens' WebResourceGet Text
wrgId = lens _wrgId (\ s a -> s{_wrgId = a})

instance GoogleRequest WebResourceGet where
        type Rs WebResourceGet =
             SiteVerificationWebResourceResource
        type Scopes WebResourceGet =
             '["https://www.googleapis.com/auth/siteverification"]
        requestClient WebResourceGet'{..}
          = go _wrgId (Just AltJSON) siteVerificationService
          where go
                  = buildClient (Proxy :: Proxy WebResourceGetResource)
                      mempty
