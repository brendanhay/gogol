{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module Games.Revisions.Check
    (
    -- * REST Resource
      RevisionsCheckAPI

    -- * Creating a Request
    , revisionsCheck
    , RevisionsCheck

    -- * Request Lenses
    , rQuotaUser
    , rPrettyPrint
    , rClientRevision
    , rUserIp
    , rKey
    , rOauthToken
    , rFields
    , rAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesRevisionsCheck@ which the
-- 'RevisionsCheck' request conforms to.
type RevisionsCheckAPI =
     "revisions" :>
       "check" :>
         QueryParam "clientRevision" Text :>
           Get '[JSON] RevisionCheckResponse

-- | Checks whether the games client is out of date.
--
-- /See:/ 'revisionsCheck' smart constructor.
data RevisionsCheck = RevisionsCheck
    { _rQuotaUser      :: !(Maybe Text)
    , _rPrettyPrint    :: !Bool
    , _rClientRevision :: !Text
    , _rUserIp         :: !(Maybe Text)
    , _rKey            :: !(Maybe Text)
    , _rOauthToken     :: !(Maybe Text)
    , _rFields         :: !(Maybe Text)
    , _rAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RevisionsCheck'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rQuotaUser'
--
-- * 'rPrettyPrint'
--
-- * 'rClientRevision'
--
-- * 'rUserIp'
--
-- * 'rKey'
--
-- * 'rOauthToken'
--
-- * 'rFields'
--
-- * 'rAlt'
revisionsCheck
    :: Text -- ^ 'clientRevision'
    -> RevisionsCheck
revisionsCheck pRClientRevision_ =
    RevisionsCheck
    { _rQuotaUser = Nothing
    , _rPrettyPrint = True
    , _rClientRevision = pRClientRevision_
    , _rUserIp = Nothing
    , _rKey = Nothing
    , _rOauthToken = Nothing
    , _rFields = Nothing
    , _rAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rQuotaUser :: Lens' RevisionsCheck' (Maybe Text)
rQuotaUser
  = lens _rQuotaUser (\ s a -> s{_rQuotaUser = a})

-- | Returns response with indentations and line breaks.
rPrettyPrint :: Lens' RevisionsCheck' Bool
rPrettyPrint
  = lens _rPrettyPrint (\ s a -> s{_rPrettyPrint = a})

-- | The revision of the client SDK used by your application. Format:
-- [PLATFORM_TYPE]:[VERSION_NUMBER]. Possible values of PLATFORM_TYPE are:
-- - \"ANDROID\" - Client is running the Android SDK. - \"IOS\" - Client is
-- running the iOS SDK. - \"WEB_APP\" - Client is running as a Web App.
rClientRevision :: Lens' RevisionsCheck' Text
rClientRevision
  = lens _rClientRevision
      (\ s a -> s{_rClientRevision = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rUserIp :: Lens' RevisionsCheck' (Maybe Text)
rUserIp = lens _rUserIp (\ s a -> s{_rUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rKey :: Lens' RevisionsCheck' (Maybe Text)
rKey = lens _rKey (\ s a -> s{_rKey = a})

-- | OAuth 2.0 token for the current user.
rOauthToken :: Lens' RevisionsCheck' (Maybe Text)
rOauthToken
  = lens _rOauthToken (\ s a -> s{_rOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rFields :: Lens' RevisionsCheck' (Maybe Text)
rFields = lens _rFields (\ s a -> s{_rFields = a})

-- | Data format for the response.
rAlt :: Lens' RevisionsCheck' Text
rAlt = lens _rAlt (\ s a -> s{_rAlt = a})

instance GoogleRequest RevisionsCheck' where
        type Rs RevisionsCheck' = RevisionCheckResponse
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u RevisionsCheck{..}
          = go _rQuotaUser _rPrettyPrint
              (Just _rClientRevision)
              _rUserIp
              _rKey
              _rOauthToken
              _rFields
              _rAlt
          where go
                  = clientWithRoute (Proxy :: Proxy RevisionsCheckAPI)
                      r
                      u
