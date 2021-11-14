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
-- Module      : Network.Google.Resource.SiteVerification.WebResource.GetToken
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get a verification token for placing on a website or domain.
--
-- /See:/ <https://developers.google.com/site-verification/ Google Site Verification API Reference> for @siteVerification.webResource.getToken@.
module Network.Google.Resource.SiteVerification.WebResource.GetToken
    (
    -- * REST Resource
      WebResourceGetTokenResource

    -- * Creating a Request
    , webResourceGetToken
    , WebResourceGetToken

    -- * Request Lenses
    , wrgtPayload
    ) where

import Network.Google.Prelude
import Network.Google.SiteVerification.Types

-- | A resource alias for @siteVerification.webResource.getToken@ method which the
-- 'WebResourceGetToken' request conforms to.
type WebResourceGetTokenResource =
     "siteVerification" :>
       "v1" :>
         "token" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON]
               SiteVerificationWebResourceGettokenRequest
               :>
               Post '[JSON]
                 SiteVerificationWebResourceGettokenResponse

-- | Get a verification token for placing on a website or domain.
--
-- /See:/ 'webResourceGetToken' smart constructor.
newtype WebResourceGetToken =
  WebResourceGetToken'
    { _wrgtPayload :: SiteVerificationWebResourceGettokenRequest
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WebResourceGetToken' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wrgtPayload'
webResourceGetToken
    :: SiteVerificationWebResourceGettokenRequest -- ^ 'wrgtPayload'
    -> WebResourceGetToken
webResourceGetToken pWrgtPayload_ =
  WebResourceGetToken' {_wrgtPayload = pWrgtPayload_}


-- | Multipart request metadata.
wrgtPayload :: Lens' WebResourceGetToken SiteVerificationWebResourceGettokenRequest
wrgtPayload
  = lens _wrgtPayload (\ s a -> s{_wrgtPayload = a})

instance GoogleRequest WebResourceGetToken where
        type Rs WebResourceGetToken =
             SiteVerificationWebResourceGettokenResponse
        type Scopes WebResourceGetToken =
             '["https://www.googleapis.com/auth/siteverification",
               "https://www.googleapis.com/auth/siteverification.verify_only"]
        requestClient WebResourceGetToken'{..}
          = go (Just AltJSON) _wrgtPayload
              siteVerificationService
          where go
                  = buildClient
                      (Proxy :: Proxy WebResourceGetTokenResource)
                      mempty
