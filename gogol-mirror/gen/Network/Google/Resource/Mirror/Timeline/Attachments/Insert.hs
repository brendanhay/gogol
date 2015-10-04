{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
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
    , taiUserIP
    , taiItemId
    , taiMedia
    , taiKey
    , taiOAuthToken
    , taiFields
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
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[OctetStream] Body :>
                           Post '[JSON] Attachment

-- | Adds a new attachment to a timeline item.
--
-- /See:/ 'timelineAttachmentsInsert'' smart constructor.
data TimelineAttachmentsInsert' = TimelineAttachmentsInsert'
    { _taiQuotaUser   :: !(Maybe Text)
    , _taiPrettyPrint :: !Bool
    , _taiUserIP      :: !(Maybe Text)
    , _taiItemId      :: !Text
    , _taiMedia       :: !Body
    , _taiKey         :: !(Maybe Key)
    , _taiOAuthToken  :: !(Maybe OAuthToken)
    , _taiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TimelineAttachmentsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'taiQuotaUser'
--
-- * 'taiPrettyPrint'
--
-- * 'taiUserIP'
--
-- * 'taiItemId'
--
-- * 'taiMedia'
--
-- * 'taiKey'
--
-- * 'taiOAuthToken'
--
-- * 'taiFields'
timelineAttachmentsInsert'
    :: Text -- ^ 'itemId'
    -> Body -- ^ 'media'
    -> TimelineAttachmentsInsert'
timelineAttachmentsInsert' pTaiItemId_ pTaiMedia_ =
    TimelineAttachmentsInsert'
    { _taiQuotaUser = Nothing
    , _taiPrettyPrint = True
    , _taiUserIP = Nothing
    , _taiItemId = pTaiItemId_
    , _taiMedia = pTaiMedia_
    , _taiKey = Nothing
    , _taiOAuthToken = Nothing
    , _taiFields = Nothing
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
taiUserIP :: Lens' TimelineAttachmentsInsert' (Maybe Text)
taiUserIP
  = lens _taiUserIP (\ s a -> s{_taiUserIP = a})

-- | The ID of the timeline item the attachment belongs to.
taiItemId :: Lens' TimelineAttachmentsInsert' Text
taiItemId
  = lens _taiItemId (\ s a -> s{_taiItemId = a})

taiMedia :: Lens' TimelineAttachmentsInsert' Body
taiMedia = lens _taiMedia (\ s a -> s{_taiMedia = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
taiKey :: Lens' TimelineAttachmentsInsert' (Maybe Key)
taiKey = lens _taiKey (\ s a -> s{_taiKey = a})

-- | OAuth 2.0 token for the current user.
taiOAuthToken :: Lens' TimelineAttachmentsInsert' (Maybe OAuthToken)
taiOAuthToken
  = lens _taiOAuthToken
      (\ s a -> s{_taiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
taiFields :: Lens' TimelineAttachmentsInsert' (Maybe Text)
taiFields
  = lens _taiFields (\ s a -> s{_taiFields = a})

instance GoogleAuth TimelineAttachmentsInsert' where
        authKey = taiKey . _Just
        authToken = taiOAuthToken . _Just

instance GoogleRequest TimelineAttachmentsInsert'
         where
        type Rs TimelineAttachmentsInsert' = Attachment
        request = requestWithRoute defReq mirrorURL
        requestWithRoute r u TimelineAttachmentsInsert'{..}
          = go _taiItemId _taiQuotaUser (Just _taiPrettyPrint)
              _taiUserIP
              _taiFields
              _taiKey
              _taiOAuthToken
              (Just AltJSON)
              _taiMedia
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TimelineAttachmentsInsertResource)
                      r
                      u
