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
-- Module      : Network.Google.Resource.PubSub.Projects.Subscriptions.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing subscription. Note that certain properties of a
-- subscription, such as its topic, are not modifiable.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.subscriptions.patch@.
module Network.Google.Resource.PubSub.Projects.Subscriptions.Patch
    (
    -- * REST Resource
      ProjectsSubscriptionsPatchResource

    -- * Creating a Request
    , projectsSubscriptionsPatch
    , ProjectsSubscriptionsPatch

    -- * Request Lenses
    , pspXgafv
    , pspUploadProtocol
    , pspAccessToken
    , pspUploadType
    , pspPayload
    , pspName
    , pspCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types

-- | A resource alias for @pubsub.projects.subscriptions.patch@ method which the
-- 'ProjectsSubscriptionsPatch' request conforms to.
type ProjectsSubscriptionsPatchResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] UpdateSubscriptionRequest :>
                       Patch '[JSON] Subscription

-- | Updates an existing subscription. Note that certain properties of a
-- subscription, such as its topic, are not modifiable.
--
-- /See:/ 'projectsSubscriptionsPatch' smart constructor.
data ProjectsSubscriptionsPatch = ProjectsSubscriptionsPatch'
    { _pspXgafv          :: !(Maybe Xgafv)
    , _pspUploadProtocol :: !(Maybe Text)
    , _pspAccessToken    :: !(Maybe Text)
    , _pspUploadType     :: !(Maybe Text)
    , _pspPayload        :: !UpdateSubscriptionRequest
    , _pspName           :: !Text
    , _pspCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsSubscriptionsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pspXgafv'
--
-- * 'pspUploadProtocol'
--
-- * 'pspAccessToken'
--
-- * 'pspUploadType'
--
-- * 'pspPayload'
--
-- * 'pspName'
--
-- * 'pspCallback'
projectsSubscriptionsPatch
    :: UpdateSubscriptionRequest -- ^ 'pspPayload'
    -> Text -- ^ 'pspName'
    -> ProjectsSubscriptionsPatch
projectsSubscriptionsPatch pPspPayload_ pPspName_ =
    ProjectsSubscriptionsPatch'
    { _pspXgafv = Nothing
    , _pspUploadProtocol = Nothing
    , _pspAccessToken = Nothing
    , _pspUploadType = Nothing
    , _pspPayload = pPspPayload_
    , _pspName = pPspName_
    , _pspCallback = Nothing
    }

-- | V1 error format.
pspXgafv :: Lens' ProjectsSubscriptionsPatch (Maybe Xgafv)
pspXgafv = lens _pspXgafv (\ s a -> s{_pspXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pspUploadProtocol :: Lens' ProjectsSubscriptionsPatch (Maybe Text)
pspUploadProtocol
  = lens _pspUploadProtocol
      (\ s a -> s{_pspUploadProtocol = a})

-- | OAuth access token.
pspAccessToken :: Lens' ProjectsSubscriptionsPatch (Maybe Text)
pspAccessToken
  = lens _pspAccessToken
      (\ s a -> s{_pspAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pspUploadType :: Lens' ProjectsSubscriptionsPatch (Maybe Text)
pspUploadType
  = lens _pspUploadType
      (\ s a -> s{_pspUploadType = a})

-- | Multipart request metadata.
pspPayload :: Lens' ProjectsSubscriptionsPatch UpdateSubscriptionRequest
pspPayload
  = lens _pspPayload (\ s a -> s{_pspPayload = a})

-- | The name of the subscription. It must have the format
-- \`\"projects\/{project}\/subscriptions\/{subscription}\"\`.
-- \`{subscription}\` must start with a letter, and contain only letters
-- (\`[A-Za-z]\`), numbers (\`[0-9]\`), dashes (\`-\`), underscores
-- (\`_\`), periods (\`.\`), tildes (\`~\`), plus (\`+\`) or percent signs
-- (\`%\`). It must be between 3 and 255 characters in length, and it must
-- not start with \`\"goog\"\`.
pspName :: Lens' ProjectsSubscriptionsPatch Text
pspName = lens _pspName (\ s a -> s{_pspName = a})

-- | JSONP
pspCallback :: Lens' ProjectsSubscriptionsPatch (Maybe Text)
pspCallback
  = lens _pspCallback (\ s a -> s{_pspCallback = a})

instance GoogleRequest ProjectsSubscriptionsPatch
         where
        type Rs ProjectsSubscriptionsPatch = Subscription
        type Scopes ProjectsSubscriptionsPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/pubsub"]
        requestClient ProjectsSubscriptionsPatch'{..}
          = go _pspName _pspXgafv _pspUploadProtocol
              _pspAccessToken
              _pspUploadType
              _pspCallback
              (Just AltJSON)
              _pspPayload
              pubSubService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsSubscriptionsPatchResource)
                      mempty
