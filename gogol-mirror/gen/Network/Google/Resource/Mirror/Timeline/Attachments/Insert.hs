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
-- Module      : Network.Google.Resource.Mirror.Timeline.Attachments.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Adds a new attachment to a timeline item.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @MirrorTimelineAttachmentsInsert@.
module Network.Google.Resource.Mirror.Timeline.Attachments.Insert
    (
    -- * REST Resource
      TimelineAttachmentsInsertResource

    -- * Creating a Request
    , timelineAttachmentsInsert'
    , TimelineAttachmentsInsert'

    -- * Request Lenses
    , taiQuotaUser
    , taiPrettyPrint
    , taiUserIp
    , taiItemId
    , taiKey
    , taiOauthToken
    , taiFields
    , taiAlt
    ) where

import           Network.Google.Mirror.Types
import           Network.Google.Prelude

-- | A resource alias for @MirrorTimelineAttachmentsInsert@ which the
-- 'TimelineAttachmentsInsert'' request conforms to.
type TimelineAttachmentsInsertResource =
     "timeline" :>
       Capture "itemId" Text :>
         "attachments" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] Attachment

-- | Adds a new attachment to a timeline item.
--
-- /See:/ 'timelineAttachmentsInsert'' smart constructor.
data TimelineAttachmentsInsert' = TimelineAttachmentsInsert'
    { _taiQuotaUser   :: !(Maybe Text)
    , _taiPrettyPrint :: !Bool
    , _taiUserIp      :: !(Maybe Text)
    , _taiItemId      :: !Text
    , _taiKey         :: !(Maybe Text)
    , _taiOauthToken  :: !(Maybe Text)
    , _taiFields      :: !(Maybe Text)
    , _taiAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TimelineAttachmentsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'taiQuotaUser'
--
-- * 'taiPrettyPrint'
--
-- * 'taiUserIp'
--
-- * 'taiItemId'
--
-- * 'taiKey'
--
-- * 'taiOauthToken'
--
-- * 'taiFields'
--
-- * 'taiAlt'
timelineAttachmentsInsert'
    :: Text -- ^ 'itemId'
    -> TimelineAttachmentsInsert'
timelineAttachmentsInsert' pTaiItemId_ =
    TimelineAttachmentsInsert'
    { _taiQuotaUser = Nothing
    , _taiPrettyPrint = True
    , _taiUserIp = Nothing
    , _taiItemId = pTaiItemId_
    , _taiKey = Nothing
    , _taiOauthToken = Nothing
    , _taiFields = Nothing
    , _taiAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
taiQuotaUser :: Lens' TimelineAttachmentsInsert' (Maybe Text)
taiQuotaUser
  = lens _taiQuotaUser (\ s a -> s{_taiQuotaUser = a})

-- | Returns response with indentations and line breaks.
taiPrettyPrint :: Lens' TimelineAttachmentsInsert' Bool
taiPrettyPrint
  = lens _taiPrettyPrint
      (\ s a -> s{_taiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
taiUserIp :: Lens' TimelineAttachmentsInsert' (Maybe Text)
taiUserIp
  = lens _taiUserIp (\ s a -> s{_taiUserIp = a})

-- | The ID of the timeline item the attachment belongs to.
taiItemId :: Lens' TimelineAttachmentsInsert' Text
taiItemId
  = lens _taiItemId (\ s a -> s{_taiItemId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
taiKey :: Lens' TimelineAttachmentsInsert' (Maybe Text)
taiKey = lens _taiKey (\ s a -> s{_taiKey = a})

-- | OAuth 2.0 token for the current user.
taiOauthToken :: Lens' TimelineAttachmentsInsert' (Maybe Text)
taiOauthToken
  = lens _taiOauthToken
      (\ s a -> s{_taiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
taiFields :: Lens' TimelineAttachmentsInsert' (Maybe Text)
taiFields
  = lens _taiFields (\ s a -> s{_taiFields = a})

-- | Data format for the response.
taiAlt :: Lens' TimelineAttachmentsInsert' Alt
taiAlt = lens _taiAlt (\ s a -> s{_taiAlt = a})

instance GoogleRequest TimelineAttachmentsInsert'
         where
        type Rs TimelineAttachmentsInsert' = Attachment
        request = requestWithRoute defReq mirrorURL
        requestWithRoute r u TimelineAttachmentsInsert'{..}
          = go _taiQuotaUser (Just _taiPrettyPrint) _taiUserIp
              _taiItemId
              _taiKey
              _taiOauthToken
              _taiFields
              (Just _taiAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TimelineAttachmentsInsertResource)
                      r
                      u
