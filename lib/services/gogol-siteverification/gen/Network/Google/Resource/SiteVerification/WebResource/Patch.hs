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
-- Module      : Network.Google.Resource.SiteVerification.WebResource.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modify the list of owners for your website or domain. This method
-- supports patch semantics.
--
-- /See:/ <https://developers.google.com/site-verification/ Google Site Verification API Reference> for @siteVerification.webResource.patch@.
module Network.Google.Resource.SiteVerification.WebResource.Patch
    (
    -- * REST Resource
      WebResourcePatchResource

    -- * Creating a Request
    , webResourcePatch
    , WebResourcePatch

    -- * Request Lenses
    , wrpPayload
    , wrpId
    ) where

import Network.Google.Prelude
import Network.Google.SiteVerification.Types

-- | A resource alias for @siteVerification.webResource.patch@ method which the
-- 'WebResourcePatch' request conforms to.
type WebResourcePatchResource =
     "siteVerification" :>
       "v1" :>
         "webResource" :>
           Capture "id" Text :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] SiteVerificationWebResourceResource
                 :> Patch '[JSON] SiteVerificationWebResourceResource

-- | Modify the list of owners for your website or domain. This method
-- supports patch semantics.
--
-- /See:/ 'webResourcePatch' smart constructor.
data WebResourcePatch =
  WebResourcePatch'
    { _wrpPayload :: !SiteVerificationWebResourceResource
    , _wrpId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WebResourcePatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wrpPayload'
--
-- * 'wrpId'
webResourcePatch
    :: SiteVerificationWebResourceResource -- ^ 'wrpPayload'
    -> Text -- ^ 'wrpId'
    -> WebResourcePatch
webResourcePatch pWrpPayload_ pWrpId_ =
  WebResourcePatch' {_wrpPayload = pWrpPayload_, _wrpId = pWrpId_}


-- | Multipart request metadata.
wrpPayload :: Lens' WebResourcePatch SiteVerificationWebResourceResource
wrpPayload
  = lens _wrpPayload (\ s a -> s{_wrpPayload = a})

-- | The id of a verified site or domain.
wrpId :: Lens' WebResourcePatch Text
wrpId = lens _wrpId (\ s a -> s{_wrpId = a})

instance GoogleRequest WebResourcePatch where
        type Rs WebResourcePatch =
             SiteVerificationWebResourceResource
        type Scopes WebResourcePatch =
             '["https://www.googleapis.com/auth/siteverification"]
        requestClient WebResourcePatch'{..}
          = go _wrpId (Just AltJSON) _wrpPayload
              siteVerificationService
          where go
                  = buildClient
                      (Proxy :: Proxy WebResourcePatchResource)
                      mempty
