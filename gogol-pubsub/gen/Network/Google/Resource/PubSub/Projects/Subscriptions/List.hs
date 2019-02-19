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
-- Module      : Network.Google.Resource.PubSub.Projects.Subscriptions.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists matching subscriptions.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.subscriptions.list@.
module Network.Google.Resource.PubSub.Projects.Subscriptions.List
    (
    -- * REST Resource
      ProjectsSubscriptionsListResource

    -- * Creating a Request
    , projectsSubscriptionsList
    , ProjectsSubscriptionsList

    -- * Request Lenses
    , pslXgafv
    , pslUploadProtocol
    , pslProject
    , pslAccessToken
    , pslUploadType
    , pslPageToken
    , pslPageSize
    , pslCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types

-- | A resource alias for @pubsub.projects.subscriptions.list@ method which the
-- 'ProjectsSubscriptionsList' request conforms to.
type ProjectsSubscriptionsListResource =
     "v1" :>
       Capture "project" Text :>
         "subscriptions" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListSubscriptionsResponse

-- | Lists matching subscriptions.
--
-- /See:/ 'projectsSubscriptionsList' smart constructor.
data ProjectsSubscriptionsList =
  ProjectsSubscriptionsList'
    { _pslXgafv          :: !(Maybe Xgafv)
    , _pslUploadProtocol :: !(Maybe Text)
    , _pslProject        :: !Text
    , _pslAccessToken    :: !(Maybe Text)
    , _pslUploadType     :: !(Maybe Text)
    , _pslPageToken      :: !(Maybe Text)
    , _pslPageSize       :: !(Maybe (Textual Int32))
    , _pslCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsSubscriptionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pslXgafv'
--
-- * 'pslUploadProtocol'
--
-- * 'pslProject'
--
-- * 'pslAccessToken'
--
-- * 'pslUploadType'
--
-- * 'pslPageToken'
--
-- * 'pslPageSize'
--
-- * 'pslCallback'
projectsSubscriptionsList
    :: Text -- ^ 'pslProject'
    -> ProjectsSubscriptionsList
projectsSubscriptionsList pPslProject_ =
  ProjectsSubscriptionsList'
    { _pslXgafv = Nothing
    , _pslUploadProtocol = Nothing
    , _pslProject = pPslProject_
    , _pslAccessToken = Nothing
    , _pslUploadType = Nothing
    , _pslPageToken = Nothing
    , _pslPageSize = Nothing
    , _pslCallback = Nothing
    }

-- | V1 error format.
pslXgafv :: Lens' ProjectsSubscriptionsList (Maybe Xgafv)
pslXgafv = lens _pslXgafv (\ s a -> s{_pslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pslUploadProtocol :: Lens' ProjectsSubscriptionsList (Maybe Text)
pslUploadProtocol
  = lens _pslUploadProtocol
      (\ s a -> s{_pslUploadProtocol = a})

-- | The name of the project in which to list subscriptions. Format is
-- \`projects\/{project-id}\`.
pslProject :: Lens' ProjectsSubscriptionsList Text
pslProject
  = lens _pslProject (\ s a -> s{_pslProject = a})

-- | OAuth access token.
pslAccessToken :: Lens' ProjectsSubscriptionsList (Maybe Text)
pslAccessToken
  = lens _pslAccessToken
      (\ s a -> s{_pslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pslUploadType :: Lens' ProjectsSubscriptionsList (Maybe Text)
pslUploadType
  = lens _pslUploadType
      (\ s a -> s{_pslUploadType = a})

-- | The value returned by the last \`ListSubscriptionsResponse\`; indicates
-- that this is a continuation of a prior \`ListSubscriptions\` call, and
-- that the system should return the next page of data.
pslPageToken :: Lens' ProjectsSubscriptionsList (Maybe Text)
pslPageToken
  = lens _pslPageToken (\ s a -> s{_pslPageToken = a})

-- | Maximum number of subscriptions to return.
pslPageSize :: Lens' ProjectsSubscriptionsList (Maybe Int32)
pslPageSize
  = lens _pslPageSize (\ s a -> s{_pslPageSize = a}) .
      mapping _Coerce

-- | JSONP
pslCallback :: Lens' ProjectsSubscriptionsList (Maybe Text)
pslCallback
  = lens _pslCallback (\ s a -> s{_pslCallback = a})

instance GoogleRequest ProjectsSubscriptionsList
         where
        type Rs ProjectsSubscriptionsList =
             ListSubscriptionsResponse
        type Scopes ProjectsSubscriptionsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/pubsub"]
        requestClient ProjectsSubscriptionsList'{..}
          = go _pslProject _pslXgafv _pslUploadProtocol
              _pslAccessToken
              _pslUploadType
              _pslPageToken
              _pslPageSize
              _pslCallback
              (Just AltJSON)
              pubSubService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsSubscriptionsListResource)
                      mempty
