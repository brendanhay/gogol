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
-- Module      : Network.Google.Resource.SiteVerification.WebResource.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Attempt verification of a website or domain.
--
-- /See:/ <https://developers.google.com/site-verification/ Google Site Verification API Reference> for @siteVerification.webResource.insert@.
module Network.Google.Resource.SiteVerification.WebResource.Insert
    (
    -- * REST Resource
      WebResourceInsertResource

    -- * Creating a Request
    , webResourceInsert'
    , WebResourceInsert'

    -- * Request Lenses
    , wriPayload
    , wriVerificationMethod
    ) where

import           Network.Google.Prelude
import           Network.Google.SiteVerification.Types

-- | A resource alias for @siteVerification.webResource.insert@ method which the
-- 'WebResourceInsert'' request conforms to.
type WebResourceInsertResource =
     "webResource" :>
       QueryParam "verificationMethod" Text :>
         QueryParam "alt" AltJSON :>
           ReqBody '[JSON] SiteVerificationWebResourceResource
             :> Post '[JSON] SiteVerificationWebResourceResource

-- | Attempt verification of a website or domain.
--
-- /See:/ 'webResourceInsert'' smart constructor.
data WebResourceInsert' = WebResourceInsert'
    { _wriPayload            :: !SiteVerificationWebResourceResource
    , _wriVerificationMethod :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'WebResourceInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wriPayload'
--
-- * 'wriVerificationMethod'
webResourceInsert'
    :: SiteVerificationWebResourceResource -- ^ 'wriPayload'
    -> Text -- ^ 'wriVerificationMethod'
    -> WebResourceInsert'
webResourceInsert' pWriPayload_ pWriVerificationMethod_ =
    WebResourceInsert'
    { _wriPayload = pWriPayload_
    , _wriVerificationMethod = pWriVerificationMethod_
    }

-- | Multipart request metadata.
wriPayload :: Lens' WebResourceInsert' SiteVerificationWebResourceResource
wriPayload
  = lens _wriPayload (\ s a -> s{_wriPayload = a})

-- | The method to use for verifying a site or domain.
wriVerificationMethod :: Lens' WebResourceInsert' Text
wriVerificationMethod
  = lens _wriVerificationMethod
      (\ s a -> s{_wriVerificationMethod = a})

instance GoogleRequest WebResourceInsert' where
        type Rs WebResourceInsert' =
             SiteVerificationWebResourceResource
        requestClient WebResourceInsert'{..}
          = go (Just _wriVerificationMethod) (Just AltJSON)
              _wriPayload
              siteVerificationService
          where go
                  = buildClient
                      (Proxy :: Proxy WebResourceInsertResource)
                      mempty
