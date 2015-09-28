{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Mirror.Timeline.Attachments.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a list of attachments for a timeline item.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @mirror.timeline.attachments.list@.
module Network.Google.API.Mirror.Timeline.Attachments.List
    (
    -- * REST Resource
      TimelineAttachmentsListAPI

    -- * Creating a Request
    , timelineAttachmentsList'
    , TimelineAttachmentsList'

    -- * Request Lenses
    , talQuotaUser
    , talPrettyPrint
    , talUserIp
    , talItemId
    , talKey
    , talOauthToken
    , talFields
    , talAlt
    ) where

import           Network.Google.Mirror.Types
import           Network.Google.Prelude

-- | A resource alias for mirror.timeline.attachments.list which the
-- 'TimelineAttachmentsList'' request conforms to.
type TimelineAttachmentsListAPI =
     "timeline" :>
       Capture "itemId" Text :>
         "attachments" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :>
                         Get '[JSON] AttachmentsListResponse

-- | Returns a list of attachments for a timeline item.
--
-- /See:/ 'timelineAttachmentsList'' smart constructor.
data TimelineAttachmentsList' = TimelineAttachmentsList'
    { _talQuotaUser   :: !(Maybe Text)
    , _talPrettyPrint :: !Bool
    , _talUserIp      :: !(Maybe Text)
    , _talItemId      :: !Text
    , _talKey         :: !(Maybe Text)
    , _talOauthToken  :: !(Maybe Text)
    , _talFields      :: !(Maybe Text)
    , _talAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TimelineAttachmentsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'talQuotaUser'
--
-- * 'talPrettyPrint'
--
-- * 'talUserIp'
--
-- * 'talItemId'
--
-- * 'talKey'
--
-- * 'talOauthToken'
--
-- * 'talFields'
--
-- * 'talAlt'
timelineAttachmentsList'
    :: Text -- ^ 'itemId'
    -> TimelineAttachmentsList'
timelineAttachmentsList' pTalItemId_ =
    TimelineAttachmentsList'
    { _talQuotaUser = Nothing
    , _talPrettyPrint = True
    , _talUserIp = Nothing
    , _talItemId = pTalItemId_
    , _talKey = Nothing
    , _talOauthToken = Nothing
    , _talFields = Nothing
    , _talAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
talQuotaUser :: Lens' TimelineAttachmentsList' (Maybe Text)
talQuotaUser
  = lens _talQuotaUser (\ s a -> s{_talQuotaUser = a})

-- | Returns response with indentations and line breaks.
talPrettyPrint :: Lens' TimelineAttachmentsList' Bool
talPrettyPrint
  = lens _talPrettyPrint
      (\ s a -> s{_talPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
talUserIp :: Lens' TimelineAttachmentsList' (Maybe Text)
talUserIp
  = lens _talUserIp (\ s a -> s{_talUserIp = a})

-- | The ID of the timeline item whose attachments should be listed.
talItemId :: Lens' TimelineAttachmentsList' Text
talItemId
  = lens _talItemId (\ s a -> s{_talItemId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
talKey :: Lens' TimelineAttachmentsList' (Maybe Text)
talKey = lens _talKey (\ s a -> s{_talKey = a})

-- | OAuth 2.0 token for the current user.
talOauthToken :: Lens' TimelineAttachmentsList' (Maybe Text)
talOauthToken
  = lens _talOauthToken
      (\ s a -> s{_talOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
talFields :: Lens' TimelineAttachmentsList' (Maybe Text)
talFields
  = lens _talFields (\ s a -> s{_talFields = a})

-- | Data format for the response.
talAlt :: Lens' TimelineAttachmentsList' Alt
talAlt = lens _talAlt (\ s a -> s{_talAlt = a})

instance GoogleRequest TimelineAttachmentsList' where
        type Rs TimelineAttachmentsList' =
             AttachmentsListResponse
        request = requestWithRoute defReq mirrorURL
        requestWithRoute r u TimelineAttachmentsList'{..}
          = go _talQuotaUser (Just _talPrettyPrint) _talUserIp
              _talItemId
              _talKey
              _talOauthToken
              _talFields
              (Just _talAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TimelineAttachmentsListAPI)
                      r
                      u
