{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Games.Revisions.Check
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Checks whether the games client is out of date.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.revisions.check@.
module Network.Google.API.Games.Revisions.Check
    (
    -- * REST Resource
      RevisionsCheckAPI

    -- * Creating a Request
    , revisionsCheck'
    , RevisionsCheck'

    -- * Request Lenses
    , revQuotaUser
    , revPrettyPrint
    , revClientRevision
    , revUserIp
    , revKey
    , revOauthToken
    , revFields
    , revAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for games.revisions.check which the
-- 'RevisionsCheck'' request conforms to.
type RevisionsCheckAPI =
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
    { _revQuotaUser      :: !(Maybe Text)
    , _revPrettyPrint    :: !Bool
    , _revClientRevision :: !Text
    , _revUserIp         :: !(Maybe Text)
    , _revKey            :: !(Maybe Text)
    , _revOauthToken     :: !(Maybe Text)
    , _revFields         :: !(Maybe Text)
    , _revAlt            :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RevisionsCheck'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'revQuotaUser'
--
-- * 'revPrettyPrint'
--
-- * 'revClientRevision'
--
-- * 'revUserIp'
--
-- * 'revKey'
--
-- * 'revOauthToken'
--
-- * 'revFields'
--
-- * 'revAlt'
revisionsCheck'
    :: Text -- ^ 'clientRevision'
    -> RevisionsCheck'
revisionsCheck' pRevClientRevision_ =
    RevisionsCheck'
    { _revQuotaUser = Nothing
    , _revPrettyPrint = True
    , _revClientRevision = pRevClientRevision_
    , _revUserIp = Nothing
    , _revKey = Nothing
    , _revOauthToken = Nothing
    , _revFields = Nothing
    , _revAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
revQuotaUser :: Lens' RevisionsCheck' (Maybe Text)
revQuotaUser
  = lens _revQuotaUser (\ s a -> s{_revQuotaUser = a})

-- | Returns response with indentations and line breaks.
revPrettyPrint :: Lens' RevisionsCheck' Bool
revPrettyPrint
  = lens _revPrettyPrint
      (\ s a -> s{_revPrettyPrint = a})

-- | The revision of the client SDK used by your application. Format:
-- [PLATFORM_TYPE]:[VERSION_NUMBER]. Possible values of PLATFORM_TYPE are:
-- - \"ANDROID\" - Client is running the Android SDK. - \"IOS\" - Client is
-- running the iOS SDK. - \"WEB_APP\" - Client is running as a Web App.
revClientRevision :: Lens' RevisionsCheck' Text
revClientRevision
  = lens _revClientRevision
      (\ s a -> s{_revClientRevision = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
revUserIp :: Lens' RevisionsCheck' (Maybe Text)
revUserIp
  = lens _revUserIp (\ s a -> s{_revUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
revKey :: Lens' RevisionsCheck' (Maybe Text)
revKey = lens _revKey (\ s a -> s{_revKey = a})

-- | OAuth 2.0 token for the current user.
revOauthToken :: Lens' RevisionsCheck' (Maybe Text)
revOauthToken
  = lens _revOauthToken
      (\ s a -> s{_revOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
revFields :: Lens' RevisionsCheck' (Maybe Text)
revFields
  = lens _revFields (\ s a -> s{_revFields = a})

-- | Data format for the response.
revAlt :: Lens' RevisionsCheck' Alt
revAlt = lens _revAlt (\ s a -> s{_revAlt = a})

instance GoogleRequest RevisionsCheck' where
        type Rs RevisionsCheck' = RevisionCheckResponse
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u RevisionsCheck'{..}
          = go _revQuotaUser (Just _revPrettyPrint)
              (Just _revClientRevision)
              _revUserIp
              _revKey
              _revOauthToken
              _revFields
              (Just _revAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy RevisionsCheckAPI)
                      r
                      u
