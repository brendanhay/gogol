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
    , chaQuotaUser
    , chaPrettyPrint
    , chaUserIP
    , chaChangeId
    , chaKey
    , chaOAuthToken
    , chaFields
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
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Change

-- | Gets a specific change.
--
-- /See:/ 'changesGet'' smart constructor.
data ChangesGet' = ChangesGet'
    { _chaQuotaUser   :: !(Maybe Text)
    , _chaPrettyPrint :: !Bool
    , _chaUserIP      :: !(Maybe Text)
    , _chaChangeId    :: !Text
    , _chaKey         :: !(Maybe Key)
    , _chaOAuthToken  :: !(Maybe OAuthToken)
    , _chaFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChangesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'chaQuotaUser'
--
-- * 'chaPrettyPrint'
--
-- * 'chaUserIP'
--
-- * 'chaChangeId'
--
-- * 'chaKey'
--
-- * 'chaOAuthToken'
--
-- * 'chaFields'
changesGet'
    :: Text -- ^ 'changeId'
    -> ChangesGet'
changesGet' pChaChangeId_ =
    ChangesGet'
    { _chaQuotaUser = Nothing
    , _chaPrettyPrint = True
    , _chaUserIP = Nothing
    , _chaChangeId = pChaChangeId_
    , _chaKey = Nothing
    , _chaOAuthToken = Nothing
    , _chaFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
chaQuotaUser :: Lens' ChangesGet' (Maybe Text)
chaQuotaUser
  = lens _chaQuotaUser (\ s a -> s{_chaQuotaUser = a})

-- | Returns response with indentations and line breaks.
chaPrettyPrint :: Lens' ChangesGet' Bool
chaPrettyPrint
  = lens _chaPrettyPrint
      (\ s a -> s{_chaPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
chaUserIP :: Lens' ChangesGet' (Maybe Text)
chaUserIP
  = lens _chaUserIP (\ s a -> s{_chaUserIP = a})

-- | The ID of the change.
chaChangeId :: Lens' ChangesGet' Text
chaChangeId
  = lens _chaChangeId (\ s a -> s{_chaChangeId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
chaKey :: Lens' ChangesGet' (Maybe Key)
chaKey = lens _chaKey (\ s a -> s{_chaKey = a})

-- | OAuth 2.0 token for the current user.
chaOAuthToken :: Lens' ChangesGet' (Maybe OAuthToken)
chaOAuthToken
  = lens _chaOAuthToken
      (\ s a -> s{_chaOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
chaFields :: Lens' ChangesGet' (Maybe Text)
chaFields
  = lens _chaFields (\ s a -> s{_chaFields = a})

instance GoogleAuth ChangesGet' where
        authKey = chaKey . _Just
        authToken = chaOAuthToken . _Just

instance GoogleRequest ChangesGet' where
        type Rs ChangesGet' = Change
        request = requestWithRoute defReq driveURL
        requestWithRoute r u ChangesGet'{..}
          = go _chaQuotaUser (Just _chaPrettyPrint) _chaUserIP
              _chaChangeId
              _chaKey
              _chaOAuthToken
              _chaFields
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy ChangesGetResource)
                      r
                      u
