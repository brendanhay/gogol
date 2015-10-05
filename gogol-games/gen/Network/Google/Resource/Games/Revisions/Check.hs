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
    , rcUserIP
    , rcKey
    , rcOAuthToken
    , rcFields
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesRevisionsCheck@ which the
-- 'RevisionsCheck'' request conforms to.
type RevisionsCheckResource =
     "revisions" :>
       "check" :>
         QueryParam "clientRevision" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] RevisionCheckResponse

-- | Checks whether the games client is out of date.
--
-- /See:/ 'revisionsCheck'' smart constructor.
data RevisionsCheck' = RevisionsCheck'
    { _rcQuotaUser      :: !(Maybe Text)
    , _rcPrettyPrint    :: !Bool
    , _rcClientRevision :: !Text
    , _rcUserIP         :: !(Maybe Text)
    , _rcKey            :: !(Maybe Key)
    , _rcOAuthToken     :: !(Maybe OAuthToken)
    , _rcFields         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'rcUserIP'
--
-- * 'rcKey'
--
-- * 'rcOAuthToken'
--
-- * 'rcFields'
revisionsCheck'
    :: Text -- ^ 'clientRevision'
    -> RevisionsCheck'
revisionsCheck' pRcClientRevision_ =
    RevisionsCheck'
    { _rcQuotaUser = Nothing
    , _rcPrettyPrint = True
    , _rcClientRevision = pRcClientRevision_
    , _rcUserIP = Nothing
    , _rcKey = Nothing
    , _rcOAuthToken = Nothing
    , _rcFields = Nothing
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
rcUserIP :: Lens' RevisionsCheck' (Maybe Text)
rcUserIP = lens _rcUserIP (\ s a -> s{_rcUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rcKey :: Lens' RevisionsCheck' (Maybe Key)
rcKey = lens _rcKey (\ s a -> s{_rcKey = a})

-- | OAuth 2.0 token for the current user.
rcOAuthToken :: Lens' RevisionsCheck' (Maybe OAuthToken)
rcOAuthToken
  = lens _rcOAuthToken (\ s a -> s{_rcOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rcFields :: Lens' RevisionsCheck' (Maybe Text)
rcFields = lens _rcFields (\ s a -> s{_rcFields = a})

instance GoogleAuth RevisionsCheck' where
        authKey = rcKey . _Just
        authToken = rcOAuthToken . _Just

instance GoogleRequest RevisionsCheck' where
        type Rs RevisionsCheck' = RevisionCheckResponse
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u RevisionsCheck'{..}
          = go (Just _rcClientRevision) _rcQuotaUser
              (Just _rcPrettyPrint)
              _rcUserIP
              _rcFields
              _rcKey
              _rcOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RevisionsCheckResource)
                      r
                      u
