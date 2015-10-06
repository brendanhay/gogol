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
-- Module      : Network.Google.Resource.Drive.Children.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a file into a folder.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveChildrenInsert@.
module Network.Google.Resource.Drive.Children.Insert
    (
    -- * REST Resource
      ChildrenInsertResource

    -- * Creating a Request
    , childrenInsert'
    , ChildrenInsert'

    -- * Request Lenses
    , chiQuotaUser
    , chiPrettyPrint
    , chiUserIP
    , chiFolderId
    , chiPayload
    , chiKey
    , chiOAuthToken
    , chiFields
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveChildrenInsert@ which the
-- 'ChildrenInsert'' request conforms to.
type ChildrenInsertResource =
     "files" :>
       Capture "folderId" Text :>
         "children" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] ChildReference :>
                           Post '[JSON] ChildReference

-- | Inserts a file into a folder.
--
-- /See:/ 'childrenInsert'' smart constructor.
data ChildrenInsert' = ChildrenInsert'
    { _chiQuotaUser   :: !(Maybe Text)
    , _chiPrettyPrint :: !Bool
    , _chiUserIP      :: !(Maybe Text)
    , _chiFolderId    :: !Text
    , _chiPayload     :: !ChildReference
    , _chiKey         :: !(Maybe AuthKey)
    , _chiOAuthToken  :: !(Maybe OAuthToken)
    , _chiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChildrenInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'chiQuotaUser'
--
-- * 'chiPrettyPrint'
--
-- * 'chiUserIP'
--
-- * 'chiFolderId'
--
-- * 'chiPayload'
--
-- * 'chiKey'
--
-- * 'chiOAuthToken'
--
-- * 'chiFields'
childrenInsert'
    :: Text -- ^ 'folderId'
    -> ChildReference -- ^ 'payload'
    -> ChildrenInsert'
childrenInsert' pChiFolderId_ pChiPayload_ =
    ChildrenInsert'
    { _chiQuotaUser = Nothing
    , _chiPrettyPrint = True
    , _chiUserIP = Nothing
    , _chiFolderId = pChiFolderId_
    , _chiPayload = pChiPayload_
    , _chiKey = Nothing
    , _chiOAuthToken = Nothing
    , _chiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
chiQuotaUser :: Lens' ChildrenInsert' (Maybe Text)
chiQuotaUser
  = lens _chiQuotaUser (\ s a -> s{_chiQuotaUser = a})

-- | Returns response with indentations and line breaks.
chiPrettyPrint :: Lens' ChildrenInsert' Bool
chiPrettyPrint
  = lens _chiPrettyPrint
      (\ s a -> s{_chiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
chiUserIP :: Lens' ChildrenInsert' (Maybe Text)
chiUserIP
  = lens _chiUserIP (\ s a -> s{_chiUserIP = a})

-- | The ID of the folder.
chiFolderId :: Lens' ChildrenInsert' Text
chiFolderId
  = lens _chiFolderId (\ s a -> s{_chiFolderId = a})

-- | Multipart request metadata.
chiPayload :: Lens' ChildrenInsert' ChildReference
chiPayload
  = lens _chiPayload (\ s a -> s{_chiPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
chiKey :: Lens' ChildrenInsert' (Maybe AuthKey)
chiKey = lens _chiKey (\ s a -> s{_chiKey = a})

-- | OAuth 2.0 token for the current user.
chiOAuthToken :: Lens' ChildrenInsert' (Maybe OAuthToken)
chiOAuthToken
  = lens _chiOAuthToken
      (\ s a -> s{_chiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
chiFields :: Lens' ChildrenInsert' (Maybe Text)
chiFields
  = lens _chiFields (\ s a -> s{_chiFields = a})

instance GoogleAuth ChildrenInsert' where
        authKey = chiKey . _Just
        authToken = chiOAuthToken . _Just

instance GoogleRequest ChildrenInsert' where
        type Rs ChildrenInsert' = ChildReference
        request = requestWith driveRequest
        requestWith rq ChildrenInsert'{..}
          = go _chiFolderId _chiQuotaUser
              (Just _chiPrettyPrint)
              _chiUserIP
              _chiFields
              _chiKey
              _chiOAuthToken
              (Just AltJSON)
              _chiPayload
          where go
                  = clientBuild (Proxy :: Proxy ChildrenInsertResource)
                      rq
