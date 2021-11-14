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
-- Module      : Network.Google.Resource.FirebaseDynamicLinks.ShortLinks.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a short Dynamic Link given either a valid long Dynamic Link or
-- details such as Dynamic Link domain, Android and iOS app information.
-- The created short Dynamic Link will not expire. Repeated calls with the
-- same long Dynamic Link or Dynamic Link information will produce the same
-- short Dynamic Link. The Dynamic Link domain in the request must be owned
-- by requester\'s Firebase project.
--
-- /See:/ <https://firebase.google.com/docs/dynamic-links/ Firebase Dynamic Links API Reference> for @firebasedynamiclinks.shortLinks.create@.
module Network.Google.Resource.FirebaseDynamicLinks.ShortLinks.Create
    (
    -- * REST Resource
      ShortLinksCreateResource

    -- * Creating a Request
    , shortLinksCreate
    , ShortLinksCreate

    -- * Request Lenses
    , slcXgafv
    , slcUploadProtocol
    , slcAccessToken
    , slcUploadType
    , slcPayload
    , slcCallback
    ) where

import Network.Google.FirebaseDynamicLinks.Types
import Network.Google.Prelude

-- | A resource alias for @firebasedynamiclinks.shortLinks.create@ method which the
-- 'ShortLinksCreate' request conforms to.
type ShortLinksCreateResource =
     "v1" :>
       "shortLinks" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] CreateShortDynamicLinkRequest :>
                       Post '[JSON] CreateShortDynamicLinkResponse

-- | Creates a short Dynamic Link given either a valid long Dynamic Link or
-- details such as Dynamic Link domain, Android and iOS app information.
-- The created short Dynamic Link will not expire. Repeated calls with the
-- same long Dynamic Link or Dynamic Link information will produce the same
-- short Dynamic Link. The Dynamic Link domain in the request must be owned
-- by requester\'s Firebase project.
--
-- /See:/ 'shortLinksCreate' smart constructor.
data ShortLinksCreate =
  ShortLinksCreate'
    { _slcXgafv :: !(Maybe Xgafv)
    , _slcUploadProtocol :: !(Maybe Text)
    , _slcAccessToken :: !(Maybe Text)
    , _slcUploadType :: !(Maybe Text)
    , _slcPayload :: !CreateShortDynamicLinkRequest
    , _slcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ShortLinksCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slcXgafv'
--
-- * 'slcUploadProtocol'
--
-- * 'slcAccessToken'
--
-- * 'slcUploadType'
--
-- * 'slcPayload'
--
-- * 'slcCallback'
shortLinksCreate
    :: CreateShortDynamicLinkRequest -- ^ 'slcPayload'
    -> ShortLinksCreate
shortLinksCreate pSlcPayload_ =
  ShortLinksCreate'
    { _slcXgafv = Nothing
    , _slcUploadProtocol = Nothing
    , _slcAccessToken = Nothing
    , _slcUploadType = Nothing
    , _slcPayload = pSlcPayload_
    , _slcCallback = Nothing
    }


-- | V1 error format.
slcXgafv :: Lens' ShortLinksCreate (Maybe Xgafv)
slcXgafv = lens _slcXgafv (\ s a -> s{_slcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
slcUploadProtocol :: Lens' ShortLinksCreate (Maybe Text)
slcUploadProtocol
  = lens _slcUploadProtocol
      (\ s a -> s{_slcUploadProtocol = a})

-- | OAuth access token.
slcAccessToken :: Lens' ShortLinksCreate (Maybe Text)
slcAccessToken
  = lens _slcAccessToken
      (\ s a -> s{_slcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
slcUploadType :: Lens' ShortLinksCreate (Maybe Text)
slcUploadType
  = lens _slcUploadType
      (\ s a -> s{_slcUploadType = a})

-- | Multipart request metadata.
slcPayload :: Lens' ShortLinksCreate CreateShortDynamicLinkRequest
slcPayload
  = lens _slcPayload (\ s a -> s{_slcPayload = a})

-- | JSONP
slcCallback :: Lens' ShortLinksCreate (Maybe Text)
slcCallback
  = lens _slcCallback (\ s a -> s{_slcCallback = a})

instance GoogleRequest ShortLinksCreate where
        type Rs ShortLinksCreate =
             CreateShortDynamicLinkResponse
        type Scopes ShortLinksCreate =
             '["https://www.googleapis.com/auth/firebase"]
        requestClient ShortLinksCreate'{..}
          = go _slcXgafv _slcUploadProtocol _slcAccessToken
              _slcUploadType
              _slcCallback
              (Just AltJSON)
              _slcPayload
              firebaseDynamicLinksService
          where go
                  = buildClient
                      (Proxy :: Proxy ShortLinksCreateResource)
                      mempty
