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
-- Module      : Network.Google.Resource.Games.Revisions.Check
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Checks whether the games client is out of date.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesRevisionsCheck@.
module Network.Google.Resource.Games.Revisions.Check
    (
    -- * REST Resource
      RevisionsCheckResource

    -- * Creating a Request
    , revisionsCheck'
    , RevisionsCheck'

    -- * Request Lenses
    , rcQuotaUser
    , rcPrettyPrint
    , rcClientRevision
    , rcUserIp
    , rcKey
    , rcOauthToken
    , rcFields
    , rcAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesRevisionsCheck@ which the
-- 'RevisionsCheck'' request conforms to.
type RevisionsCheckResource =
     "revisions" :>
       "check" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "clientRevision" Text :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :>
                         Get '[JSON] RevisionCheckResponse

-- | Checks whether the games client is out of date.
--
-- /See:/ 'revisionsCheck'' smart constructor.
data RevisionsCheck' = RevisionsCheck'
    { _rcQuotaUser      :: !(Maybe Text)
    , _rcPrettyPrint    :: !Bool
    , _rcClientRevision :: !Text
    , _rcUserIp         :: !(Maybe Text)
    , _rcKey            :: !(Maybe Text)
    , _rcOauthToken     :: !(Maybe Text)
    , _rcFields         :: !(Maybe Text)
    , _rcAlt            :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RevisionsCheck'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcQuotaUser'
--
-- * 'rcPrettyPrint'
--
-- * 'rcClientRevision'
--
-- * 'rcUserIp'
--
-- * 'rcKey'
--
-- * 'rcOauthToken'
--
-- * 'rcFields'
--
-- * 'rcAlt'
revisionsCheck'
    :: Text -- ^ 'clientRevision'
    -> RevisionsCheck'
revisionsCheck' pRcClientRevision_ =
    RevisionsCheck'
    { _rcQuotaUser = Nothing
    , _rcPrettyPrint = True
    , _rcClientRevision = pRcClientRevision_
    , _rcUserIp = Nothing
    , _rcKey = Nothing
    , _rcOauthToken = Nothing
    , _rcFields = Nothing
    , _rcAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rcQuotaUser :: Lens' RevisionsCheck' (Maybe Text)
rcQuotaUser
  = lens _rcQuotaUser (\ s a -> s{_rcQuotaUser = a})

-- | Returns response with indentations and line breaks.
rcPrettyPrint :: Lens' RevisionsCheck' Bool
rcPrettyPrint
  = lens _rcPrettyPrint
      (\ s a -> s{_rcPrettyPrint = a})

-- | The revision of the client SDK used by your application. Format:
-- [PLATFORM_TYPE]:[VERSION_NUMBER]. Possible values of PLATFORM_TYPE are:
-- - \"ANDROID\" - Client is running the Android SDK. - \"IOS\" - Client is
-- running the iOS SDK. - \"WEB_APP\" - Client is running as a Web App.
rcClientRevision :: Lens' RevisionsCheck' Text
rcClientRevision
  = lens _rcClientRevision
      (\ s a -> s{_rcClientRevision = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rcUserIp :: Lens' RevisionsCheck' (Maybe Text)
rcUserIp = lens _rcUserIp (\ s a -> s{_rcUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rcKey :: Lens' RevisionsCheck' (Maybe Text)
rcKey = lens _rcKey (\ s a -> s{_rcKey = a})

-- | OAuth 2.0 token for the current user.
rcOauthToken :: Lens' RevisionsCheck' (Maybe Text)
rcOauthToken
  = lens _rcOauthToken (\ s a -> s{_rcOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rcFields :: Lens' RevisionsCheck' (Maybe Text)
rcFields = lens _rcFields (\ s a -> s{_rcFields = a})

-- | Data format for the response.
rcAlt :: Lens' RevisionsCheck' Alt
rcAlt = lens _rcAlt (\ s a -> s{_rcAlt = a})

instance GoogleRequest RevisionsCheck' where
        type Rs RevisionsCheck' = RevisionCheckResponse
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u RevisionsCheck'{..}
          = go _rcQuotaUser (Just _rcPrettyPrint)
              (Just _rcClientRevision)
              _rcUserIp
              _rcKey
              _rcOauthToken
              _rcFields
              (Just _rcAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RevisionsCheckResource)
                      r
                      u
