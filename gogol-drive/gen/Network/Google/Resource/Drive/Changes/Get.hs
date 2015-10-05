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
-- Module      : Network.Google.Resource.Drive.Changes.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a specific change.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveChangesGet@.
module Network.Google.Resource.Drive.Changes.Get
    (
    -- * REST Resource
      ChangesGetResource

    -- * Creating a Request
    , changesGet'
    , ChangesGet'

    -- * Request Lenses
    , cQuotaUser
    , cPrettyPrint
    , cUserIP
    , cChangeId
    , cKey
    , cOAuthToken
    , cFields
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveChangesGet@ which the
-- 'ChangesGet'' request conforms to.
type ChangesGetResource =
     "changes" :>
       Capture "changeId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Change

-- | Gets a specific change.
--
-- /See:/ 'changesGet'' smart constructor.
data ChangesGet' = ChangesGet'
    { _cQuotaUser   :: !(Maybe Text)
    , _cPrettyPrint :: !Bool
    , _cUserIP      :: !(Maybe Text)
    , _cChangeId    :: !Text
    , _cKey         :: !(Maybe Key)
    , _cOAuthToken  :: !(Maybe OAuthToken)
    , _cFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChangesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cQuotaUser'
--
-- * 'cPrettyPrint'
--
-- * 'cUserIP'
--
-- * 'cChangeId'
--
-- * 'cKey'
--
-- * 'cOAuthToken'
--
-- * 'cFields'
changesGet'
    :: Text -- ^ 'changeId'
    -> ChangesGet'
changesGet' pCChangeId_ =
    ChangesGet'
    { _cQuotaUser = Nothing
    , _cPrettyPrint = True
    , _cUserIP = Nothing
    , _cChangeId = pCChangeId_
    , _cKey = Nothing
    , _cOAuthToken = Nothing
    , _cFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cQuotaUser :: Lens' ChangesGet' (Maybe Text)
cQuotaUser
  = lens _cQuotaUser (\ s a -> s{_cQuotaUser = a})

-- | Returns response with indentations and line breaks.
cPrettyPrint :: Lens' ChangesGet' Bool
cPrettyPrint
  = lens _cPrettyPrint (\ s a -> s{_cPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cUserIP :: Lens' ChangesGet' (Maybe Text)
cUserIP = lens _cUserIP (\ s a -> s{_cUserIP = a})

-- | The ID of the change.
cChangeId :: Lens' ChangesGet' Text
cChangeId
  = lens _cChangeId (\ s a -> s{_cChangeId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cKey :: Lens' ChangesGet' (Maybe Key)
cKey = lens _cKey (\ s a -> s{_cKey = a})

-- | OAuth 2.0 token for the current user.
cOAuthToken :: Lens' ChangesGet' (Maybe OAuthToken)
cOAuthToken
  = lens _cOAuthToken (\ s a -> s{_cOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cFields :: Lens' ChangesGet' (Maybe Text)
cFields = lens _cFields (\ s a -> s{_cFields = a})

instance GoogleAuth ChangesGet' where
        authKey = cKey . _Just
        authToken = cOAuthToken . _Just

instance GoogleRequest ChangesGet' where
        type Rs ChangesGet' = Change
        request = requestWithRoute defReq driveURL
        requestWithRoute r u ChangesGet'{..}
          = go _cChangeId _cQuotaUser (Just _cPrettyPrint)
              _cUserIP
              _cFields
              _cKey
              _cOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy ChangesGetResource)
                      r
                      u
