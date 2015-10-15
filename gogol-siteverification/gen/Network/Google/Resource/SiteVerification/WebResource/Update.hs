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
-- Module      : Network.Google.Resource.SiteVerification.WebResource.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Modify the list of owners for your website or domain.
--
-- /See:/ <https://developers.google.com/site-verification/ Google Site Verification API Reference> for @SiteVerificationWebResourceUpdate@.
module Network.Google.Resource.SiteVerification.WebResource.Update
    (
    -- * REST Resource
      WebResourceUpdateResource

    -- * Creating a Request
    , webResourceUpdate'
    , WebResourceUpdate'

    -- * Request Lenses
    , wruPayload
    , wruId
    ) where

import           Network.Google.Prelude
import           Network.Google.SiteVerification.Types

-- | A resource alias for @SiteVerificationWebResourceUpdate@ method which the
-- 'WebResourceUpdate'' request conforms to.
type WebResourceUpdateResource =
     "webResource" :>
       Capture "id" Text :>
         QueryParam "alt" AltJSON :>
           ReqBody '[JSON] SiteVerificationWebResourceResource
             :> Put '[JSON] SiteVerificationWebResourceResource

-- | Modify the list of owners for your website or domain.
--
-- /See:/ 'webResourceUpdate'' smart constructor.
data WebResourceUpdate' = WebResourceUpdate'
    { _wruPayload :: !SiteVerificationWebResourceResource
    , _wruId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'WebResourceUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wruPayload'
--
-- * 'wruId'
webResourceUpdate'
    :: SiteVerificationWebResourceResource -- ^ 'payload'
    -> Text -- ^ 'id'
    -> WebResourceUpdate'
webResourceUpdate' pWruPayload_ pWruId_ =
    WebResourceUpdate'
    { _wruPayload = pWruPayload_
    , _wruId = pWruId_
    }

-- | Multipart request metadata.
wruPayload :: Lens' WebResourceUpdate' SiteVerificationWebResourceResource
wruPayload
  = lens _wruPayload (\ s a -> s{_wruPayload = a})

-- | The id of a verified site or domain.
wruId :: Lens' WebResourceUpdate' Text
wruId = lens _wruId (\ s a -> s{_wruId = a})

instance GoogleRequest WebResourceUpdate' where
        type Rs WebResourceUpdate' =
             SiteVerificationWebResourceResource
        requestClient WebResourceUpdate'{..}
          = go _wruId (Just AltJSON) _wruPayload
              siteVerification
          where go
                  = buildClient
                      (Proxy :: Proxy WebResourceUpdateResource)
                      mempty
