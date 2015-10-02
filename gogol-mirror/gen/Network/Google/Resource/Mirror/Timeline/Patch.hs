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
-- Module      : Network.Google.Resource.Mirror.Timeline.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a timeline item in place. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @MirrorTimelinePatch@.
module Network.Google.Resource.Mirror.Timeline.Patch
    (
    -- * REST Resource
      TimelinePatchResource

    -- * Creating a Request
    , timelinePatch'
    , TimelinePatch'

    -- * Request Lenses
    , tpQuotaUser
    , tpPrettyPrint
    , tpUserIP
    , tpKey
    , tpId
    , tpOAuthToken
    , tpTimelineItem
    , tpFields
    ) where

import           Network.Google.Mirror.Types
import           Network.Google.Prelude

-- | A resource alias for @MirrorTimelinePatch@ which the
-- 'TimelinePatch'' request conforms to.
type TimelinePatchResource =
     "timeline" :>
       Capture "id" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] TimelineItem :>
                         Patch '[JSON] TimelineItem

-- | Updates a timeline item in place. This method supports patch semantics.
--
-- /See:/ 'timelinePatch'' smart constructor.
data TimelinePatch' = TimelinePatch'
    { _tpQuotaUser    :: !(Maybe Text)
    , _tpPrettyPrint  :: !Bool
    , _tpUserIP       :: !(Maybe Text)
    , _tpKey          :: !(Maybe Key)
    , _tpId           :: !Text
    , _tpOAuthToken   :: !(Maybe OAuthToken)
    , _tpTimelineItem :: !TimelineItem
    , _tpFields       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TimelinePatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpQuotaUser'
--
-- * 'tpPrettyPrint'
--
-- * 'tpUserIP'
--
-- * 'tpKey'
--
-- * 'tpId'
--
-- * 'tpOAuthToken'
--
-- * 'tpTimelineItem'
--
-- * 'tpFields'
timelinePatch'
    :: Text -- ^ 'id'
    -> TimelineItem -- ^ 'TimelineItem'
    -> TimelinePatch'
timelinePatch' pTpId_ pTpTimelineItem_ =
    TimelinePatch'
    { _tpQuotaUser = Nothing
    , _tpPrettyPrint = True
    , _tpUserIP = Nothing
    , _tpKey = Nothing
    , _tpId = pTpId_
    , _tpOAuthToken = Nothing
    , _tpTimelineItem = pTpTimelineItem_
    , _tpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tpQuotaUser :: Lens' TimelinePatch' (Maybe Text)
tpQuotaUser
  = lens _tpQuotaUser (\ s a -> s{_tpQuotaUser = a})

-- | Returns response with indentations and line breaks.
tpPrettyPrint :: Lens' TimelinePatch' Bool
tpPrettyPrint
  = lens _tpPrettyPrint
      (\ s a -> s{_tpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tpUserIP :: Lens' TimelinePatch' (Maybe Text)
tpUserIP = lens _tpUserIP (\ s a -> s{_tpUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tpKey :: Lens' TimelinePatch' (Maybe Key)
tpKey = lens _tpKey (\ s a -> s{_tpKey = a})

-- | The ID of the timeline item.
tpId :: Lens' TimelinePatch' Text
tpId = lens _tpId (\ s a -> s{_tpId = a})

-- | OAuth 2.0 token for the current user.
tpOAuthToken :: Lens' TimelinePatch' (Maybe OAuthToken)
tpOAuthToken
  = lens _tpOAuthToken (\ s a -> s{_tpOAuthToken = a})

-- | Multipart request metadata.
tpTimelineItem :: Lens' TimelinePatch' TimelineItem
tpTimelineItem
  = lens _tpTimelineItem
      (\ s a -> s{_tpTimelineItem = a})

-- | Selector specifying which fields to include in a partial response.
tpFields :: Lens' TimelinePatch' (Maybe Text)
tpFields = lens _tpFields (\ s a -> s{_tpFields = a})

instance GoogleAuth TimelinePatch' where
        authKey = tpKey . _Just
        authToken = tpOAuthToken . _Just

instance GoogleRequest TimelinePatch' where
        type Rs TimelinePatch' = TimelineItem
        request = requestWithRoute defReq mirrorURL
        requestWithRoute r u TimelinePatch'{..}
          = go _tpQuotaUser (Just _tpPrettyPrint) _tpUserIP
              _tpKey
              _tpId
              _tpOAuthToken
              _tpFields
              (Just AltJSON)
              _tpTimelineItem
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TimelinePatchResource)
                      r
                      u
