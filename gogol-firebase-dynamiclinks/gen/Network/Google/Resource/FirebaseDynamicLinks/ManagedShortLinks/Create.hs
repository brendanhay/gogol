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
-- Module      : Network.Google.Resource.FirebaseDynamicLinks.ManagedShortLinks.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a managed short Dynamic Link given either a valid long Dynamic
-- Link or details such as Dynamic Link domain, Android and iOS app
-- information. The created short Dynamic Link will not expire. This
-- differs from CreateShortDynamicLink in the following ways: - The request
-- will also contain a name for the link (non unique name for the front
-- end). - The response must be authenticated with an auth token (generated
-- with the admin service account). - The link will appear in the FDL list
-- of links in the console front end. The Dynamic Link domain in the
-- request must be owned by requester\'s Firebase project.
--
-- /See:/ <https://firebase.google.com/docs/dynamic-links/ Firebase Dynamic Links API Reference> for @firebasedynamiclinks.managedShortLinks.create@.
module Network.Google.Resource.FirebaseDynamicLinks.ManagedShortLinks.Create
    (
    -- * REST Resource
      ManagedShortLinksCreateResource

    -- * Creating a Request
    , managedShortLinksCreate
    , ManagedShortLinksCreate

    -- * Request Lenses
    , mslcXgafv
    , mslcUploadProtocol
    , mslcAccessToken
    , mslcUploadType
    , mslcPayload
    , mslcCallback
    ) where

import           Network.Google.FirebaseDynamicLinks.Types
import           Network.Google.Prelude

-- | A resource alias for @firebasedynamiclinks.managedShortLinks.create@ method which the
-- 'ManagedShortLinksCreate' request conforms to.
type ManagedShortLinksCreateResource =
     "v1" :>
       "managedShortLinks:create" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] CreateManagedShortLinkRequest :>
                       Post '[JSON] CreateManagedShortLinkResponse

-- | Creates a managed short Dynamic Link given either a valid long Dynamic
-- Link or details such as Dynamic Link domain, Android and iOS app
-- information. The created short Dynamic Link will not expire. This
-- differs from CreateShortDynamicLink in the following ways: - The request
-- will also contain a name for the link (non unique name for the front
-- end). - The response must be authenticated with an auth token (generated
-- with the admin service account). - The link will appear in the FDL list
-- of links in the console front end. The Dynamic Link domain in the
-- request must be owned by requester\'s Firebase project.
--
-- /See:/ 'managedShortLinksCreate' smart constructor.
data ManagedShortLinksCreate =
  ManagedShortLinksCreate'
    { _mslcXgafv          :: !(Maybe Xgafv)
    , _mslcUploadProtocol :: !(Maybe Text)
    , _mslcAccessToken    :: !(Maybe Text)
    , _mslcUploadType     :: !(Maybe Text)
    , _mslcPayload        :: !CreateManagedShortLinkRequest
    , _mslcCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagedShortLinksCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mslcXgafv'
--
-- * 'mslcUploadProtocol'
--
-- * 'mslcAccessToken'
--
-- * 'mslcUploadType'
--
-- * 'mslcPayload'
--
-- * 'mslcCallback'
managedShortLinksCreate
    :: CreateManagedShortLinkRequest -- ^ 'mslcPayload'
    -> ManagedShortLinksCreate
managedShortLinksCreate pMslcPayload_ =
  ManagedShortLinksCreate'
    { _mslcXgafv = Nothing
    , _mslcUploadProtocol = Nothing
    , _mslcAccessToken = Nothing
    , _mslcUploadType = Nothing
    , _mslcPayload = pMslcPayload_
    , _mslcCallback = Nothing
    }


-- | V1 error format.
mslcXgafv :: Lens' ManagedShortLinksCreate (Maybe Xgafv)
mslcXgafv
  = lens _mslcXgafv (\ s a -> s{_mslcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mslcUploadProtocol :: Lens' ManagedShortLinksCreate (Maybe Text)
mslcUploadProtocol
  = lens _mslcUploadProtocol
      (\ s a -> s{_mslcUploadProtocol = a})

-- | OAuth access token.
mslcAccessToken :: Lens' ManagedShortLinksCreate (Maybe Text)
mslcAccessToken
  = lens _mslcAccessToken
      (\ s a -> s{_mslcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mslcUploadType :: Lens' ManagedShortLinksCreate (Maybe Text)
mslcUploadType
  = lens _mslcUploadType
      (\ s a -> s{_mslcUploadType = a})

-- | Multipart request metadata.
mslcPayload :: Lens' ManagedShortLinksCreate CreateManagedShortLinkRequest
mslcPayload
  = lens _mslcPayload (\ s a -> s{_mslcPayload = a})

-- | JSONP
mslcCallback :: Lens' ManagedShortLinksCreate (Maybe Text)
mslcCallback
  = lens _mslcCallback (\ s a -> s{_mslcCallback = a})

instance GoogleRequest ManagedShortLinksCreate where
        type Rs ManagedShortLinksCreate =
             CreateManagedShortLinkResponse
        type Scopes ManagedShortLinksCreate =
             '["https://www.googleapis.com/auth/firebase"]
        requestClient ManagedShortLinksCreate'{..}
          = go _mslcXgafv _mslcUploadProtocol _mslcAccessToken
              _mslcUploadType
              _mslcCallback
              (Just AltJSON)
              _mslcPayload
              firebaseDynamicLinksService
          where go
                  = buildClient
                      (Proxy :: Proxy ManagedShortLinksCreateResource)
                      mempty
