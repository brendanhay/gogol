{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.PubSub.Projects.Subscriptions.ModifyAckDeadline
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Modifies the ack deadline for a specific message. This method is useful
-- to indicate that more time is needed to process a message by the
-- subscriber, or to make the message available for redelivery if the
-- processing was interrupted.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Google Cloud Pub/Sub API Reference> for @PubsubProjectsSubscriptionsModifyAckDeadline@.
module Network.Google.Resource.PubSub.Projects.Subscriptions.ModifyAckDeadline
    (
    -- * REST Resource
      ProjectsSubscriptionsModifyAckDeadlineResource

    -- * Creating a Request
    , projectsSubscriptionsModifyAckDeadline'
    , ProjectsSubscriptionsModifyAckDeadline'

    -- * Request Lenses
    , psmadXgafv
    , psmadQuotaUser
    , psmadPrettyPrint
    , psmadUploadProtocol
    , psmadPp
    , psmadAccessToken
    , psmadUploadType
    , psmadBearerToken
    , psmadKey
    , psmadOauthToken
    , psmadSubscription
    , psmadFields
    , psmadCallback
    , psmadAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types

-- | A resource alias for @PubsubProjectsSubscriptionsModifyAckDeadline@ which the
-- 'ProjectsSubscriptionsModifyAckDeadline'' request conforms to.
type ProjectsSubscriptionsModifyAckDeadlineResource =
     "v1beta2" :>
       "{+subscription}:modifyAckDeadline" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" Text :> Post '[JSON] Empty

-- | Modifies the ack deadline for a specific message. This method is useful
-- to indicate that more time is needed to process a message by the
-- subscriber, or to make the message available for redelivery if the
-- processing was interrupted.
--
-- /See:/ 'projectsSubscriptionsModifyAckDeadline'' smart constructor.
data ProjectsSubscriptionsModifyAckDeadline' = ProjectsSubscriptionsModifyAckDeadline'
    { _psmadXgafv          :: !(Maybe Text)
    , _psmadQuotaUser      :: !(Maybe Text)
    , _psmadPrettyPrint    :: !Bool
    , _psmadUploadProtocol :: !(Maybe Text)
    , _psmadPp             :: !Bool
    , _psmadAccessToken    :: !(Maybe Text)
    , _psmadUploadType     :: !(Maybe Text)
    , _psmadBearerToken    :: !(Maybe Text)
    , _psmadKey            :: !(Maybe Text)
    , _psmadOauthToken     :: !(Maybe Text)
    , _psmadSubscription   :: !Text
    , _psmadFields         :: !(Maybe Text)
    , _psmadCallback       :: !(Maybe Text)
    , _psmadAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsSubscriptionsModifyAckDeadline'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psmadXgafv'
--
-- * 'psmadQuotaUser'
--
-- * 'psmadPrettyPrint'
--
-- * 'psmadUploadProtocol'
--
-- * 'psmadPp'
--
-- * 'psmadAccessToken'
--
-- * 'psmadUploadType'
--
-- * 'psmadBearerToken'
--
-- * 'psmadKey'
--
-- * 'psmadOauthToken'
--
-- * 'psmadSubscription'
--
-- * 'psmadFields'
--
-- * 'psmadCallback'
--
-- * 'psmadAlt'
projectsSubscriptionsModifyAckDeadline'
    :: Text -- ^ 'subscription'
    -> ProjectsSubscriptionsModifyAckDeadline'
projectsSubscriptionsModifyAckDeadline' pPsmadSubscription_ =
    ProjectsSubscriptionsModifyAckDeadline'
    { _psmadXgafv = Nothing
    , _psmadQuotaUser = Nothing
    , _psmadPrettyPrint = True
    , _psmadUploadProtocol = Nothing
    , _psmadPp = True
    , _psmadAccessToken = Nothing
    , _psmadUploadType = Nothing
    , _psmadBearerToken = Nothing
    , _psmadKey = Nothing
    , _psmadOauthToken = Nothing
    , _psmadSubscription = pPsmadSubscription_
    , _psmadFields = Nothing
    , _psmadCallback = Nothing
    , _psmadAlt = "json"
    }

-- | V1 error format.
psmadXgafv :: Lens' ProjectsSubscriptionsModifyAckDeadline' (Maybe Text)
psmadXgafv
  = lens _psmadXgafv (\ s a -> s{_psmadXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
psmadQuotaUser :: Lens' ProjectsSubscriptionsModifyAckDeadline' (Maybe Text)
psmadQuotaUser
  = lens _psmadQuotaUser
      (\ s a -> s{_psmadQuotaUser = a})

-- | Returns response with indentations and line breaks.
psmadPrettyPrint :: Lens' ProjectsSubscriptionsModifyAckDeadline' Bool
psmadPrettyPrint
  = lens _psmadPrettyPrint
      (\ s a -> s{_psmadPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psmadUploadProtocol :: Lens' ProjectsSubscriptionsModifyAckDeadline' (Maybe Text)
psmadUploadProtocol
  = lens _psmadUploadProtocol
      (\ s a -> s{_psmadUploadProtocol = a})

-- | Pretty-print response.
psmadPp :: Lens' ProjectsSubscriptionsModifyAckDeadline' Bool
psmadPp = lens _psmadPp (\ s a -> s{_psmadPp = a})

-- | OAuth access token.
psmadAccessToken :: Lens' ProjectsSubscriptionsModifyAckDeadline' (Maybe Text)
psmadAccessToken
  = lens _psmadAccessToken
      (\ s a -> s{_psmadAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psmadUploadType :: Lens' ProjectsSubscriptionsModifyAckDeadline' (Maybe Text)
psmadUploadType
  = lens _psmadUploadType
      (\ s a -> s{_psmadUploadType = a})

-- | OAuth bearer token.
psmadBearerToken :: Lens' ProjectsSubscriptionsModifyAckDeadline' (Maybe Text)
psmadBearerToken
  = lens _psmadBearerToken
      (\ s a -> s{_psmadBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
psmadKey :: Lens' ProjectsSubscriptionsModifyAckDeadline' (Maybe Text)
psmadKey = lens _psmadKey (\ s a -> s{_psmadKey = a})

-- | OAuth 2.0 token for the current user.
psmadOauthToken :: Lens' ProjectsSubscriptionsModifyAckDeadline' (Maybe Text)
psmadOauthToken
  = lens _psmadOauthToken
      (\ s a -> s{_psmadOauthToken = a})

-- | The name of the subscription.
psmadSubscription :: Lens' ProjectsSubscriptionsModifyAckDeadline' Text
psmadSubscription
  = lens _psmadSubscription
      (\ s a -> s{_psmadSubscription = a})

-- | Selector specifying which fields to include in a partial response.
psmadFields :: Lens' ProjectsSubscriptionsModifyAckDeadline' (Maybe Text)
psmadFields
  = lens _psmadFields (\ s a -> s{_psmadFields = a})

-- | JSONP
psmadCallback :: Lens' ProjectsSubscriptionsModifyAckDeadline' (Maybe Text)
psmadCallback
  = lens _psmadCallback
      (\ s a -> s{_psmadCallback = a})

-- | Data format for response.
psmadAlt :: Lens' ProjectsSubscriptionsModifyAckDeadline' Text
psmadAlt = lens _psmadAlt (\ s a -> s{_psmadAlt = a})

instance GoogleRequest
         ProjectsSubscriptionsModifyAckDeadline' where
        type Rs ProjectsSubscriptionsModifyAckDeadline' =
             Empty
        request = requestWithRoute defReq pubSubURL
        requestWithRoute r u
          ProjectsSubscriptionsModifyAckDeadline'{..}
          = go _psmadXgafv _psmadQuotaUser
              (Just _psmadPrettyPrint)
              _psmadUploadProtocol
              (Just _psmadPp)
              _psmadAccessToken
              _psmadUploadType
              _psmadBearerToken
              _psmadKey
              _psmadOauthToken
              _psmadSubscription
              _psmadFields
              _psmadCallback
              (Just _psmadAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ProjectsSubscriptionsModifyAckDeadlineResource)
                      r
                      u
