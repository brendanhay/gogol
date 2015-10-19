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
-- Module      : Network.Google.Resource.PubSub.Projects.Subscriptions.GetIAMPolicy
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a \`resource\`. Is empty if the
-- policy or the resource does not exist.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Google Cloud Pub/Sub API Reference> for @PubsubProjectsSubscriptionsGetIAMPolicy@.
module Network.Google.Resource.PubSub.Projects.Subscriptions.GetIAMPolicy
    (
    -- * REST Resource
      ProjectsSubscriptionsGetIAMPolicyResource

    -- * Creating a Request
    , projectsSubscriptionsGetIAMPolicy'
    , ProjectsSubscriptionsGetIAMPolicy'

    -- * Request Lenses
    , psgipXgafv
    , psgipUploadProtocol
    , psgipPp
    , psgipAccessToken
    , psgipUploadType
    , psgipBearerToken
    , psgipResource
    , psgipCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types

-- | A resource alias for @PubsubProjectsSubscriptionsGetIAMPolicy@ method which the
-- 'ProjectsSubscriptionsGetIAMPolicy'' request conforms to.
type ProjectsSubscriptionsGetIAMPolicyResource =
     "v1" :>
       CaptureMode "resource" "getIamPolicy" Text :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Policy

-- | Gets the access control policy for a \`resource\`. Is empty if the
-- policy or the resource does not exist.
--
-- /See:/ 'projectsSubscriptionsGetIAMPolicy'' smart constructor.
data ProjectsSubscriptionsGetIAMPolicy' = ProjectsSubscriptionsGetIAMPolicy'
    { _psgipXgafv          :: !(Maybe Text)
    , _psgipUploadProtocol :: !(Maybe Text)
    , _psgipPp             :: !Bool
    , _psgipAccessToken    :: !(Maybe Text)
    , _psgipUploadType     :: !(Maybe Text)
    , _psgipBearerToken    :: !(Maybe Text)
    , _psgipResource       :: !Text
    , _psgipCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsSubscriptionsGetIAMPolicy'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psgipXgafv'
--
-- * 'psgipUploadProtocol'
--
-- * 'psgipPp'
--
-- * 'psgipAccessToken'
--
-- * 'psgipUploadType'
--
-- * 'psgipBearerToken'
--
-- * 'psgipResource'
--
-- * 'psgipCallback'
projectsSubscriptionsGetIAMPolicy'
    :: Text -- ^ 'resource'
    -> ProjectsSubscriptionsGetIAMPolicy'
projectsSubscriptionsGetIAMPolicy' pPsgipResource_ =
    ProjectsSubscriptionsGetIAMPolicy'
    { _psgipXgafv = Nothing
    , _psgipUploadProtocol = Nothing
    , _psgipPp = True
    , _psgipAccessToken = Nothing
    , _psgipUploadType = Nothing
    , _psgipBearerToken = Nothing
    , _psgipResource = pPsgipResource_
    , _psgipCallback = Nothing
    }

-- | V1 error format.
psgipXgafv :: Lens' ProjectsSubscriptionsGetIAMPolicy' (Maybe Text)
psgipXgafv
  = lens _psgipXgafv (\ s a -> s{_psgipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psgipUploadProtocol :: Lens' ProjectsSubscriptionsGetIAMPolicy' (Maybe Text)
psgipUploadProtocol
  = lens _psgipUploadProtocol
      (\ s a -> s{_psgipUploadProtocol = a})

-- | Pretty-print response.
psgipPp :: Lens' ProjectsSubscriptionsGetIAMPolicy' Bool
psgipPp = lens _psgipPp (\ s a -> s{_psgipPp = a})

-- | OAuth access token.
psgipAccessToken :: Lens' ProjectsSubscriptionsGetIAMPolicy' (Maybe Text)
psgipAccessToken
  = lens _psgipAccessToken
      (\ s a -> s{_psgipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psgipUploadType :: Lens' ProjectsSubscriptionsGetIAMPolicy' (Maybe Text)
psgipUploadType
  = lens _psgipUploadType
      (\ s a -> s{_psgipUploadType = a})

-- | OAuth bearer token.
psgipBearerToken :: Lens' ProjectsSubscriptionsGetIAMPolicy' (Maybe Text)
psgipBearerToken
  = lens _psgipBearerToken
      (\ s a -> s{_psgipBearerToken = a})

-- | REQUIRED: The resource for which policy is being requested. Resource is
-- usually specified as a path, such as, \`projects\/{project}\`.
psgipResource :: Lens' ProjectsSubscriptionsGetIAMPolicy' Text
psgipResource
  = lens _psgipResource
      (\ s a -> s{_psgipResource = a})

-- | JSONP
psgipCallback :: Lens' ProjectsSubscriptionsGetIAMPolicy' (Maybe Text)
psgipCallback
  = lens _psgipCallback
      (\ s a -> s{_psgipCallback = a})

instance GoogleRequest
         ProjectsSubscriptionsGetIAMPolicy' where
        type Rs ProjectsSubscriptionsGetIAMPolicy' = Policy
        requestClient ProjectsSubscriptionsGetIAMPolicy'{..}
          = go _psgipResource _psgipXgafv _psgipUploadProtocol
              (Just _psgipPp)
              _psgipAccessToken
              _psgipUploadType
              _psgipBearerToken
              _psgipCallback
              (Just AltJSON)
              pubSubService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsSubscriptionsGetIAMPolicyResource)
                      mempty
