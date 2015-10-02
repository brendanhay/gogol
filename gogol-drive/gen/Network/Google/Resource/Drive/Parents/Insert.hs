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
-- Module      : Network.Google.Resource.Drive.Parents.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Adds a parent folder for a file.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveParentsInsert@.
module Network.Google.Resource.Drive.Parents.Insert
    (
    -- * REST Resource
      ParentsInsertResource

    -- * Creating a Request
    , parentsInsert'
    , ParentsInsert'

    -- * Request Lenses
    , piiQuotaUser
    , piiParentReference
    , piiPrettyPrint
    , piiUserIP
    , piiKey
    , piiFileId
    , piiOAuthToken
    , piiFields
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveParentsInsert@ which the
-- 'ParentsInsert'' request conforms to.
type ParentsInsertResource =
     "files" :>
       Capture "fileId" Text :>
         "parents" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] ParentReference :>
                           Post '[JSON] ParentReference

-- | Adds a parent folder for a file.
--
-- /See:/ 'parentsInsert'' smart constructor.
data ParentsInsert' = ParentsInsert'
    { _piiQuotaUser       :: !(Maybe Text)
    , _piiParentReference :: !ParentReference
    , _piiPrettyPrint     :: !Bool
    , _piiUserIP          :: !(Maybe Text)
    , _piiKey             :: !(Maybe Key)
    , _piiFileId          :: !Text
    , _piiOAuthToken      :: !(Maybe OAuthToken)
    , _piiFields          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ParentsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piiQuotaUser'
--
-- * 'piiParentReference'
--
-- * 'piiPrettyPrint'
--
-- * 'piiUserIP'
--
-- * 'piiKey'
--
-- * 'piiFileId'
--
-- * 'piiOAuthToken'
--
-- * 'piiFields'
parentsInsert'
    :: ParentReference -- ^ 'ParentReference'
    -> Text -- ^ 'fileId'
    -> ParentsInsert'
parentsInsert' pPiiParentReference_ pPiiFileId_ =
    ParentsInsert'
    { _piiQuotaUser = Nothing
    , _piiParentReference = pPiiParentReference_
    , _piiPrettyPrint = True
    , _piiUserIP = Nothing
    , _piiKey = Nothing
    , _piiFileId = pPiiFileId_
    , _piiOAuthToken = Nothing
    , _piiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
piiQuotaUser :: Lens' ParentsInsert' (Maybe Text)
piiQuotaUser
  = lens _piiQuotaUser (\ s a -> s{_piiQuotaUser = a})

-- | Multipart request metadata.
piiParentReference :: Lens' ParentsInsert' ParentReference
piiParentReference
  = lens _piiParentReference
      (\ s a -> s{_piiParentReference = a})

-- | Returns response with indentations and line breaks.
piiPrettyPrint :: Lens' ParentsInsert' Bool
piiPrettyPrint
  = lens _piiPrettyPrint
      (\ s a -> s{_piiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
piiUserIP :: Lens' ParentsInsert' (Maybe Text)
piiUserIP
  = lens _piiUserIP (\ s a -> s{_piiUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
piiKey :: Lens' ParentsInsert' (Maybe Key)
piiKey = lens _piiKey (\ s a -> s{_piiKey = a})

-- | The ID of the file.
piiFileId :: Lens' ParentsInsert' Text
piiFileId
  = lens _piiFileId (\ s a -> s{_piiFileId = a})

-- | OAuth 2.0 token for the current user.
piiOAuthToken :: Lens' ParentsInsert' (Maybe OAuthToken)
piiOAuthToken
  = lens _piiOAuthToken
      (\ s a -> s{_piiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
piiFields :: Lens' ParentsInsert' (Maybe Text)
piiFields
  = lens _piiFields (\ s a -> s{_piiFields = a})

instance GoogleAuth ParentsInsert' where
        authKey = piiKey . _Just
        authToken = piiOAuthToken . _Just

instance GoogleRequest ParentsInsert' where
        type Rs ParentsInsert' = ParentReference
        request = requestWithRoute defReq driveURL
        requestWithRoute r u ParentsInsert'{..}
          = go _piiFileId _piiQuotaUser (Just _piiPrettyPrint)
              _piiUserIP
              _piiFields
              _piiKey
              _piiOAuthToken
              (Just AltJSON)
              _piiParentReference
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ParentsInsertResource)
                      r
                      u
