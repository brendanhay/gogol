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
-- Module      : Network.Google.Resource.PubSub.Projects.Snapshots.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing snapshot. Snapshots are used in
-- <https://cloud.google.com/pubsub/docs/replay-overview Seek> operations,
-- which allow you to manage message acknowledgments in bulk. That is, you
-- can set the acknowledgment state of messages in an existing subscription
-- to the state captured by a snapshot.
-- __BETA:__ This feature is part of a beta release. This API might be
-- changed in backward-incompatible ways and is not recommended for
-- production use. It is not subject to any SLA or deprecation policy. Note
-- that certain properties of a snapshot are not modifiable.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.snapshots.patch@.
module Network.Google.Resource.PubSub.Projects.Snapshots.Patch
    (
    -- * REST Resource
      ProjectsSnapshotsPatchResource

    -- * Creating a Request
    , projectsSnapshotsPatch
    , ProjectsSnapshotsPatch

    -- * Request Lenses
    , ppXgafv
    , ppUploadProtocol
    , ppAccessToken
    , ppUploadType
    , ppPayload
    , ppName
    , ppCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types

-- | A resource alias for @pubsub.projects.snapshots.patch@ method which the
-- 'ProjectsSnapshotsPatch' request conforms to.
type ProjectsSnapshotsPatchResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] UpdateSnapshotRequest :>
                       Patch '[JSON] Snapshot

-- | Updates an existing snapshot. Snapshots are used in
-- <https://cloud.google.com/pubsub/docs/replay-overview Seek> operations,
-- which allow you to manage message acknowledgments in bulk. That is, you
-- can set the acknowledgment state of messages in an existing subscription
-- to the state captured by a snapshot.
-- __BETA:__ This feature is part of a beta release. This API might be
-- changed in backward-incompatible ways and is not recommended for
-- production use. It is not subject to any SLA or deprecation policy. Note
-- that certain properties of a snapshot are not modifiable.
--
-- /See:/ 'projectsSnapshotsPatch' smart constructor.
data ProjectsSnapshotsPatch =
  ProjectsSnapshotsPatch'
    { _ppXgafv          :: !(Maybe Xgafv)
    , _ppUploadProtocol :: !(Maybe Text)
    , _ppAccessToken    :: !(Maybe Text)
    , _ppUploadType     :: !(Maybe Text)
    , _ppPayload        :: !UpdateSnapshotRequest
    , _ppName           :: !Text
    , _ppCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsSnapshotsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppXgafv'
--
-- * 'ppUploadProtocol'
--
-- * 'ppAccessToken'
--
-- * 'ppUploadType'
--
-- * 'ppPayload'
--
-- * 'ppName'
--
-- * 'ppCallback'
projectsSnapshotsPatch
    :: UpdateSnapshotRequest -- ^ 'ppPayload'
    -> Text -- ^ 'ppName'
    -> ProjectsSnapshotsPatch
projectsSnapshotsPatch pPpPayload_ pPpName_ =
  ProjectsSnapshotsPatch'
    { _ppXgafv = Nothing
    , _ppUploadProtocol = Nothing
    , _ppAccessToken = Nothing
    , _ppUploadType = Nothing
    , _ppPayload = pPpPayload_
    , _ppName = pPpName_
    , _ppCallback = Nothing
    }


-- | V1 error format.
ppXgafv :: Lens' ProjectsSnapshotsPatch (Maybe Xgafv)
ppXgafv = lens _ppXgafv (\ s a -> s{_ppXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ppUploadProtocol :: Lens' ProjectsSnapshotsPatch (Maybe Text)
ppUploadProtocol
  = lens _ppUploadProtocol
      (\ s a -> s{_ppUploadProtocol = a})

-- | OAuth access token.
ppAccessToken :: Lens' ProjectsSnapshotsPatch (Maybe Text)
ppAccessToken
  = lens _ppAccessToken
      (\ s a -> s{_ppAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ppUploadType :: Lens' ProjectsSnapshotsPatch (Maybe Text)
ppUploadType
  = lens _ppUploadType (\ s a -> s{_ppUploadType = a})

-- | Multipart request metadata.
ppPayload :: Lens' ProjectsSnapshotsPatch UpdateSnapshotRequest
ppPayload
  = lens _ppPayload (\ s a -> s{_ppPayload = a})

-- | The name of the snapshot.
ppName :: Lens' ProjectsSnapshotsPatch Text
ppName = lens _ppName (\ s a -> s{_ppName = a})

-- | JSONP
ppCallback :: Lens' ProjectsSnapshotsPatch (Maybe Text)
ppCallback
  = lens _ppCallback (\ s a -> s{_ppCallback = a})

instance GoogleRequest ProjectsSnapshotsPatch where
        type Rs ProjectsSnapshotsPatch = Snapshot
        type Scopes ProjectsSnapshotsPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/pubsub"]
        requestClient ProjectsSnapshotsPatch'{..}
          = go _ppName _ppXgafv _ppUploadProtocol
              _ppAccessToken
              _ppUploadType
              _ppCallback
              (Just AltJSON)
              _ppPayload
              pubSubService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsSnapshotsPatchResource)
                      mempty
