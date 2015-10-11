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
-- Module      : Network.Google.Resource.Mirror.Timeline.Attachments.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a list of attachments for a timeline item.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @MirrorTimelineAttachmentsList@.
module Network.Google.Resource.Mirror.Timeline.Attachments.List
    (
    -- * REST Resource
      TimelineAttachmentsListResource

    -- * Creating a Request
    , timelineAttachmentsList'
    , TimelineAttachmentsList'

    -- * Request Lenses
    , talQuotaUser
    , talPrettyPrint
    , talUserIP
    , talItemId
    , talKey
    , talOAuthToken
    , talFields
    ) where

import           Network.Google.Mirror.Types
import           Network.Google.Prelude

-- | A resource alias for @MirrorTimelineAttachmentsList@ method which the
-- 'TimelineAttachmentsList'' request conforms to.
type TimelineAttachmentsListResource =
     "timeline" :>
       Capture "itemId" Text :>
         "attachments" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     Header "Authorization" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] AttachmentsListResponse

-- | Returns a list of attachments for a timeline item.
--
-- /See:/ 'timelineAttachmentsList'' smart constructor.
data TimelineAttachmentsList' = TimelineAttachmentsList'
    { _talQuotaUser   :: !(Maybe Text)
    , _talPrettyPrint :: !Bool
    , _talUserIP      :: !(Maybe Text)
    , _talItemId      :: !Text
    , _talKey         :: !(Maybe AuthKey)
    , _talOAuthToken  :: !(Maybe OAuthToken)
    , _talFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TimelineAttachmentsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'talQuotaUser'
--
-- * 'talPrettyPrint'
--
-- * 'talUserIP'
--
-- * 'talItemId'
--
-- * 'talKey'
--
-- * 'talOAuthToken'
--
-- * 'talFields'
timelineAttachmentsList'
    :: Text -- ^ 'itemId'
    -> TimelineAttachmentsList'
timelineAttachmentsList' pTalItemId_ =
    TimelineAttachmentsList'
    { _talQuotaUser = Nothing
    , _talPrettyPrint = True
    , _talUserIP = Nothing
    , _talItemId = pTalItemId_
    , _talKey = Nothing
    , _talOAuthToken = Nothing
    , _talFields = Nothing
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
talUserIP :: Lens' TimelineAttachmentsList' (Maybe Text)
talUserIP
  = lens _talUserIP (\ s a -> s{_talUserIP = a})

-- | The ID of the timeline item whose attachments should be listed.
talItemId :: Lens' TimelineAttachmentsList' Text
talItemId
  = lens _talItemId (\ s a -> s{_talItemId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
talKey :: Lens' TimelineAttachmentsList' (Maybe AuthKey)
talKey = lens _talKey (\ s a -> s{_talKey = a})

-- | OAuth 2.0 token for the current user.
talOAuthToken :: Lens' TimelineAttachmentsList' (Maybe OAuthToken)
talOAuthToken
  = lens _talOAuthToken
      (\ s a -> s{_talOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
talFields :: Lens' TimelineAttachmentsList' (Maybe Text)
talFields
  = lens _talFields (\ s a -> s{_talFields = a})

instance GoogleAuth TimelineAttachmentsList' where
        _AuthKey = talKey . _Just
        _AuthToken = talOAuthToken . _Just

instance GoogleRequest TimelineAttachmentsList' where
        type Rs TimelineAttachmentsList' =
             AttachmentsListResponse
        request = requestWith mirrorRequest
        requestWith rq TimelineAttachmentsList'{..}
          = go _talItemId _talQuotaUser (Just _talPrettyPrint)
              _talUserIP
              _talFields
              _talKey
              _talOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy TimelineAttachmentsListResource)
                      rq
