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
-- Module      : Network.Google.Resource.FirebaseHosting.Sites.Versions.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified metadata for a version. Note that this method will
-- fail with \`FAILED_PRECONDITION\` in the event of an invalid state
-- transition. The only valid transition for a version is currently from a
-- \`CREATED\` status to a \`FINALIZED\` status. Use
-- [\`DeleteVersion\`](..\/sites.versions\/delete) to set the status of a
-- version to \`DELETED\`.
--
-- /See:/ <https://firebase.google.com/docs/hosting/ Firebase Hosting API Reference> for @firebasehosting.sites.versions.patch@.
module Network.Google.Resource.FirebaseHosting.Sites.Versions.Patch
    (
    -- * REST Resource
      SitesVersionsPatchResource

    -- * Creating a Request
    , sitesVersionsPatch
    , SitesVersionsPatch

    -- * Request Lenses
    , svpXgafv
    , svpUploadProtocol
    , svpUpdateMask
    , svpAccessToken
    , svpUploadType
    , svpPayload
    , svpName
    , svpCallback
    ) where

import           Network.Google.FirebaseHosting.Types
import           Network.Google.Prelude

-- | A resource alias for @firebasehosting.sites.versions.patch@ method which the
-- 'SitesVersionsPatch' request conforms to.
type SitesVersionsPatchResource =
     "v1beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Version :> Patch '[JSON] Version

-- | Updates the specified metadata for a version. Note that this method will
-- fail with \`FAILED_PRECONDITION\` in the event of an invalid state
-- transition. The only valid transition for a version is currently from a
-- \`CREATED\` status to a \`FINALIZED\` status. Use
-- [\`DeleteVersion\`](..\/sites.versions\/delete) to set the status of a
-- version to \`DELETED\`.
--
-- /See:/ 'sitesVersionsPatch' smart constructor.
data SitesVersionsPatch =
  SitesVersionsPatch'
    { _svpXgafv          :: !(Maybe Xgafv)
    , _svpUploadProtocol :: !(Maybe Text)
    , _svpUpdateMask     :: !(Maybe GFieldMask)
    , _svpAccessToken    :: !(Maybe Text)
    , _svpUploadType     :: !(Maybe Text)
    , _svpPayload        :: !Version
    , _svpName           :: !Text
    , _svpCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SitesVersionsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'svpXgafv'
--
-- * 'svpUploadProtocol'
--
-- * 'svpUpdateMask'
--
-- * 'svpAccessToken'
--
-- * 'svpUploadType'
--
-- * 'svpPayload'
--
-- * 'svpName'
--
-- * 'svpCallback'
sitesVersionsPatch
    :: Version -- ^ 'svpPayload'
    -> Text -- ^ 'svpName'
    -> SitesVersionsPatch
sitesVersionsPatch pSvpPayload_ pSvpName_ =
  SitesVersionsPatch'
    { _svpXgafv = Nothing
    , _svpUploadProtocol = Nothing
    , _svpUpdateMask = Nothing
    , _svpAccessToken = Nothing
    , _svpUploadType = Nothing
    , _svpPayload = pSvpPayload_
    , _svpName = pSvpName_
    , _svpCallback = Nothing
    }

-- | V1 error format.
svpXgafv :: Lens' SitesVersionsPatch (Maybe Xgafv)
svpXgafv = lens _svpXgafv (\ s a -> s{_svpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
svpUploadProtocol :: Lens' SitesVersionsPatch (Maybe Text)
svpUploadProtocol
  = lens _svpUploadProtocol
      (\ s a -> s{_svpUploadProtocol = a})

-- | A set of field names from your [version](..\/sites.versions) that you
-- want to update.
-- A field will be overwritten if, and only if, it\'s in the mask.
-- If a mask is not provided then a default mask of only
-- [\`status\`](..\/sites.versions#Version.FIELDS.status) will be used.
svpUpdateMask :: Lens' SitesVersionsPatch (Maybe GFieldMask)
svpUpdateMask
  = lens _svpUpdateMask
      (\ s a -> s{_svpUpdateMask = a})

-- | OAuth access token.
svpAccessToken :: Lens' SitesVersionsPatch (Maybe Text)
svpAccessToken
  = lens _svpAccessToken
      (\ s a -> s{_svpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
svpUploadType :: Lens' SitesVersionsPatch (Maybe Text)
svpUploadType
  = lens _svpUploadType
      (\ s a -> s{_svpUploadType = a})

-- | Multipart request metadata.
svpPayload :: Lens' SitesVersionsPatch Version
svpPayload
  = lens _svpPayload (\ s a -> s{_svpPayload = a})

-- | The unique identifier for a version, in the format:
-- 'sites\/site-name\/versions\/versionID' This name is provided in the
-- response body when you call the
-- [\`CreateVersion\`](..\/sites.versions\/create) endpoint.
svpName :: Lens' SitesVersionsPatch Text
svpName = lens _svpName (\ s a -> s{_svpName = a})

-- | JSONP
svpCallback :: Lens' SitesVersionsPatch (Maybe Text)
svpCallback
  = lens _svpCallback (\ s a -> s{_svpCallback = a})

instance GoogleRequest SitesVersionsPatch where
        type Rs SitesVersionsPatch = Version
        type Scopes SitesVersionsPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/firebase"]
        requestClient SitesVersionsPatch'{..}
          = go _svpName _svpXgafv _svpUploadProtocol
              _svpUpdateMask
              _svpAccessToken
              _svpUploadType
              _svpCallback
              (Just AltJSON)
              _svpPayload
              firebaseHostingService
          where go
                  = buildClient
                      (Proxy :: Proxy SitesVersionsPatchResource)
                      mempty
