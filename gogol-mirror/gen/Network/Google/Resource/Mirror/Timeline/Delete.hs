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
-- Module      : Network.Google.Resource.Mirror.Timeline.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a timeline item.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @MirrorTimelineDelete@.
module Network.Google.Resource.Mirror.Timeline.Delete
    (
    -- * REST Resource
      TimelineDeleteResource

    -- * Creating a Request
    , timelineDelete'
    , TimelineDelete'

    -- * Request Lenses
    , tdQuotaUser
    , tdPrettyPrint
    , tdUserIP
    , tdKey
    , tdId
    , tdOAuthToken
    , tdFields
    ) where

import           Network.Google.Mirror.Types
import           Network.Google.Prelude

-- | A resource alias for @MirrorTimelineDelete@ method which the
-- 'TimelineDelete'' request conforms to.
type TimelineDeleteResource =
     "timeline" :>
       Capture "id" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   Header "Authorization" OAuthToken :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a timeline item.
--
-- /See:/ 'timelineDelete'' smart constructor.
data TimelineDelete' = TimelineDelete'
    { _tdQuotaUser   :: !(Maybe Text)
    , _tdPrettyPrint :: !Bool
    , _tdUserIP      :: !(Maybe Text)
    , _tdKey         :: !(Maybe AuthKey)
    , _tdId          :: !Text
    , _tdOAuthToken  :: !(Maybe OAuthToken)
    , _tdFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TimelineDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdQuotaUser'
--
-- * 'tdPrettyPrint'
--
-- * 'tdUserIP'
--
-- * 'tdKey'
--
-- * 'tdId'
--
-- * 'tdOAuthToken'
--
-- * 'tdFields'
timelineDelete'
    :: Text -- ^ 'id'
    -> TimelineDelete'
timelineDelete' pTdId_ =
    TimelineDelete'
    { _tdQuotaUser = Nothing
    , _tdPrettyPrint = True
    , _tdUserIP = Nothing
    , _tdKey = Nothing
    , _tdId = pTdId_
    , _tdOAuthToken = Nothing
    , _tdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tdQuotaUser :: Lens' TimelineDelete' (Maybe Text)
tdQuotaUser
  = lens _tdQuotaUser (\ s a -> s{_tdQuotaUser = a})

-- | Returns response with indentations and line breaks.
tdPrettyPrint :: Lens' TimelineDelete' Bool
tdPrettyPrint
  = lens _tdPrettyPrint
      (\ s a -> s{_tdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tdUserIP :: Lens' TimelineDelete' (Maybe Text)
tdUserIP = lens _tdUserIP (\ s a -> s{_tdUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tdKey :: Lens' TimelineDelete' (Maybe AuthKey)
tdKey = lens _tdKey (\ s a -> s{_tdKey = a})

-- | The ID of the timeline item.
tdId :: Lens' TimelineDelete' Text
tdId = lens _tdId (\ s a -> s{_tdId = a})

-- | OAuth 2.0 token for the current user.
tdOAuthToken :: Lens' TimelineDelete' (Maybe OAuthToken)
tdOAuthToken
  = lens _tdOAuthToken (\ s a -> s{_tdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tdFields :: Lens' TimelineDelete' (Maybe Text)
tdFields = lens _tdFields (\ s a -> s{_tdFields = a})

instance GoogleAuth TimelineDelete' where
        _AuthKey = tdKey . _Just
        _AuthToken = tdOAuthToken . _Just

instance GoogleRequest TimelineDelete' where
        type Rs TimelineDelete' = ()
        request = requestWith mirrorRequest
        requestWith rq TimelineDelete'{..}
          = go _tdId _tdQuotaUser (Just _tdPrettyPrint)
              _tdUserIP
              _tdFields
              _tdKey
              _tdOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy TimelineDeleteResource)
                      rq
