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
-- Module      : Network.Google.Resource.PubSub.Projects.Topics.SetIAMPolicy
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Google Cloud Pub/Sub API Reference> for @PubsubProjectsTopicsSetIAMPolicy@.
module Network.Google.Resource.PubSub.Projects.Topics.SetIAMPolicy
    (
    -- * REST Resource
      ProjectsTopicsSetIAMPolicyResource

    -- * Creating a Request
    , projectsTopicsSetIAMPolicy'
    , ProjectsTopicsSetIAMPolicy'

    -- * Request Lenses
    , ptsipXgafv
    , ptsipUploadProtocol
    , ptsipPp
    , ptsipAccessToken
    , ptsipUploadType
    , ptsipPayload
    , ptsipBearerToken
    , ptsipResource
    , ptsipCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types

-- | A resource alias for @PubsubProjectsTopicsSetIAMPolicy@ method which the
-- 'ProjectsTopicsSetIAMPolicy'' request conforms to.
type ProjectsTopicsSetIAMPolicyResource =
     "v1" :>
       CaptureMode "resource" "setIamPolicy" Text :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] SetIAMPolicyRequest :>
                           Post '[JSON] Policy

-- | Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ 'projectsTopicsSetIAMPolicy'' smart constructor.
data ProjectsTopicsSetIAMPolicy' = ProjectsTopicsSetIAMPolicy'
    { _ptsipXgafv          :: !(Maybe Text)
    , _ptsipUploadProtocol :: !(Maybe Text)
    , _ptsipPp             :: !Bool
    , _ptsipAccessToken    :: !(Maybe Text)
    , _ptsipUploadType     :: !(Maybe Text)
    , _ptsipPayload        :: !SetIAMPolicyRequest
    , _ptsipBearerToken    :: !(Maybe Text)
    , _ptsipResource       :: !Text
    , _ptsipCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsTopicsSetIAMPolicy'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptsipXgafv'
--
-- * 'ptsipUploadProtocol'
--
-- * 'ptsipPp'
--
-- * 'ptsipAccessToken'
--
-- * 'ptsipUploadType'
--
-- * 'ptsipPayload'
--
-- * 'ptsipBearerToken'
--
-- * 'ptsipResource'
--
-- * 'ptsipCallback'
projectsTopicsSetIAMPolicy'
    :: SetIAMPolicyRequest -- ^ 'payload'
    -> Text -- ^ 'resource'
    -> ProjectsTopicsSetIAMPolicy'
projectsTopicsSetIAMPolicy' pPtsipPayload_ pPtsipResource_ =
    ProjectsTopicsSetIAMPolicy'
    { _ptsipXgafv = Nothing
    , _ptsipUploadProtocol = Nothing
    , _ptsipPp = True
    , _ptsipAccessToken = Nothing
    , _ptsipUploadType = Nothing
    , _ptsipPayload = pPtsipPayload_
    , _ptsipBearerToken = Nothing
    , _ptsipResource = pPtsipResource_
    , _ptsipCallback = Nothing
    }

-- | V1 error format.
ptsipXgafv :: Lens' ProjectsTopicsSetIAMPolicy' (Maybe Text)
ptsipXgafv
  = lens _ptsipXgafv (\ s a -> s{_ptsipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptsipUploadProtocol :: Lens' ProjectsTopicsSetIAMPolicy' (Maybe Text)
ptsipUploadProtocol
  = lens _ptsipUploadProtocol
      (\ s a -> s{_ptsipUploadProtocol = a})

-- | Pretty-print response.
ptsipPp :: Lens' ProjectsTopicsSetIAMPolicy' Bool
ptsipPp = lens _ptsipPp (\ s a -> s{_ptsipPp = a})

-- | OAuth access token.
ptsipAccessToken :: Lens' ProjectsTopicsSetIAMPolicy' (Maybe Text)
ptsipAccessToken
  = lens _ptsipAccessToken
      (\ s a -> s{_ptsipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptsipUploadType :: Lens' ProjectsTopicsSetIAMPolicy' (Maybe Text)
ptsipUploadType
  = lens _ptsipUploadType
      (\ s a -> s{_ptsipUploadType = a})

-- | Multipart request metadata.
ptsipPayload :: Lens' ProjectsTopicsSetIAMPolicy' SetIAMPolicyRequest
ptsipPayload
  = lens _ptsipPayload (\ s a -> s{_ptsipPayload = a})

-- | OAuth bearer token.
ptsipBearerToken :: Lens' ProjectsTopicsSetIAMPolicy' (Maybe Text)
ptsipBearerToken
  = lens _ptsipBearerToken
      (\ s a -> s{_ptsipBearerToken = a})

-- | REQUIRED: The resource for which policy is being specified. Resource is
-- usually specified as a path, such as,
-- projects\/{project}\/zones\/{zone}\/disks\/{disk}.
ptsipResource :: Lens' ProjectsTopicsSetIAMPolicy' Text
ptsipResource
  = lens _ptsipResource
      (\ s a -> s{_ptsipResource = a})

-- | JSONP
ptsipCallback :: Lens' ProjectsTopicsSetIAMPolicy' (Maybe Text)
ptsipCallback
  = lens _ptsipCallback
      (\ s a -> s{_ptsipCallback = a})

instance GoogleRequest ProjectsTopicsSetIAMPolicy'
         where
        type Rs ProjectsTopicsSetIAMPolicy' = Policy
        requestClient ProjectsTopicsSetIAMPolicy'{..}
          = go _ptsipResource _ptsipXgafv _ptsipUploadProtocol
              (Just _ptsipPp)
              _ptsipAccessToken
              _ptsipUploadType
              _ptsipBearerToken
              _ptsipCallback
              (Just AltJSON)
              _ptsipPayload
              pubSubService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsTopicsSetIAMPolicyResource)
                      mempty
