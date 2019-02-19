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
-- Module      : Network.Google.Resource.PubSub.Projects.Subscriptions.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a subscription to a given topic. See the
-- <https://cloud.google.com/pubsub/docs/admin#resource_names resource name rules>.
-- If the subscription already exists, returns \`ALREADY_EXISTS\`. If the
-- corresponding topic doesn\'t exist, returns \`NOT_FOUND\`. If the name
-- is not provided in the request, the server will assign a random name for
-- this subscription on the same project as the topic, conforming to the
-- [resource name
-- format](https:\/\/cloud.google.com\/pubsub\/docs\/admin#resource_names).
-- The generated name is populated in the returned Subscription object.
-- Note that for REST API requests, you must specify a name in the request.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.subscriptions.create@.
module Network.Google.Resource.PubSub.Projects.Subscriptions.Create
    (
    -- * REST Resource
      ProjectsSubscriptionsCreateResource

    -- * Creating a Request
    , projectsSubscriptionsCreate
    , ProjectsSubscriptionsCreate

    -- * Request Lenses
    , pscXgafv
    , pscUploadProtocol
    , pscAccessToken
    , pscUploadType
    , pscPayload
    , pscName
    , pscCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types

-- | A resource alias for @pubsub.projects.subscriptions.create@ method which the
-- 'ProjectsSubscriptionsCreate' request conforms to.
type ProjectsSubscriptionsCreateResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Subscription :>
                       Put '[JSON] Subscription

-- | Creates a subscription to a given topic. See the
-- <https://cloud.google.com/pubsub/docs/admin#resource_names resource name rules>.
-- If the subscription already exists, returns \`ALREADY_EXISTS\`. If the
-- corresponding topic doesn\'t exist, returns \`NOT_FOUND\`. If the name
-- is not provided in the request, the server will assign a random name for
-- this subscription on the same project as the topic, conforming to the
-- [resource name
-- format](https:\/\/cloud.google.com\/pubsub\/docs\/admin#resource_names).
-- The generated name is populated in the returned Subscription object.
-- Note that for REST API requests, you must specify a name in the request.
--
-- /See:/ 'projectsSubscriptionsCreate' smart constructor.
data ProjectsSubscriptionsCreate =
  ProjectsSubscriptionsCreate'
    { _pscXgafv          :: !(Maybe Xgafv)
    , _pscUploadProtocol :: !(Maybe Text)
    , _pscAccessToken    :: !(Maybe Text)
    , _pscUploadType     :: !(Maybe Text)
    , _pscPayload        :: !Subscription
    , _pscName           :: !Text
    , _pscCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsSubscriptionsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pscXgafv'
--
-- * 'pscUploadProtocol'
--
-- * 'pscAccessToken'
--
-- * 'pscUploadType'
--
-- * 'pscPayload'
--
-- * 'pscName'
--
-- * 'pscCallback'
projectsSubscriptionsCreate
    :: Subscription -- ^ 'pscPayload'
    -> Text -- ^ 'pscName'
    -> ProjectsSubscriptionsCreate
projectsSubscriptionsCreate pPscPayload_ pPscName_ =
  ProjectsSubscriptionsCreate'
    { _pscXgafv = Nothing
    , _pscUploadProtocol = Nothing
    , _pscAccessToken = Nothing
    , _pscUploadType = Nothing
    , _pscPayload = pPscPayload_
    , _pscName = pPscName_
    , _pscCallback = Nothing
    }


-- | V1 error format.
pscXgafv :: Lens' ProjectsSubscriptionsCreate (Maybe Xgafv)
pscXgafv = lens _pscXgafv (\ s a -> s{_pscXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pscUploadProtocol :: Lens' ProjectsSubscriptionsCreate (Maybe Text)
pscUploadProtocol
  = lens _pscUploadProtocol
      (\ s a -> s{_pscUploadProtocol = a})

-- | OAuth access token.
pscAccessToken :: Lens' ProjectsSubscriptionsCreate (Maybe Text)
pscAccessToken
  = lens _pscAccessToken
      (\ s a -> s{_pscAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pscUploadType :: Lens' ProjectsSubscriptionsCreate (Maybe Text)
pscUploadType
  = lens _pscUploadType
      (\ s a -> s{_pscUploadType = a})

-- | Multipart request metadata.
pscPayload :: Lens' ProjectsSubscriptionsCreate Subscription
pscPayload
  = lens _pscPayload (\ s a -> s{_pscPayload = a})

-- | The name of the subscription. It must have the format
-- \`\"projects\/{project}\/subscriptions\/{subscription}\"\`.
-- \`{subscription}\` must start with a letter, and contain only letters
-- (\`[A-Za-z]\`), numbers (\`[0-9]\`), dashes (\`-\`), underscores
-- (\`_\`), periods (\`.\`), tildes (\`~\`), plus (\`+\`) or percent signs
-- (\`%\`). It must be between 3 and 255 characters in length, and it must
-- not start with \`\"goog\"\`.
pscName :: Lens' ProjectsSubscriptionsCreate Text
pscName = lens _pscName (\ s a -> s{_pscName = a})

-- | JSONP
pscCallback :: Lens' ProjectsSubscriptionsCreate (Maybe Text)
pscCallback
  = lens _pscCallback (\ s a -> s{_pscCallback = a})

instance GoogleRequest ProjectsSubscriptionsCreate
         where
        type Rs ProjectsSubscriptionsCreate = Subscription
        type Scopes ProjectsSubscriptionsCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/pubsub"]
        requestClient ProjectsSubscriptionsCreate'{..}
          = go _pscName _pscXgafv _pscUploadProtocol
              _pscAccessToken
              _pscUploadType
              _pscCallback
              (Just AltJSON)
              _pscPayload
              pubSubService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsSubscriptionsCreateResource)
                      mempty
