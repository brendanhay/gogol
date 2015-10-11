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
    , piiPrettyPrint
    , piiUserIP
    , piiPayload
    , piiKey
    , piiFileId
    , piiOAuthToken
    , piiFields
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveParentsInsert@ method which the
-- 'ParentsInsert'' request conforms to.
type ParentsInsertResource =
     "files" :>
       Capture "fileId" Text :>
         "parents" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     Header "Authorization" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] ParentReference :>
                           Post '[JSON] ParentReference

-- | Adds a parent folder for a file.
--
-- /See:/ 'parentsInsert'' smart constructor.
data ParentsInsert' = ParentsInsert'
    { _piiQuotaUser   :: !(Maybe Text)
    , _piiPrettyPrint :: !Bool
    , _piiUserIP      :: !(Maybe Text)
    , _piiPayload     :: !ParentReference
    , _piiKey         :: !(Maybe AuthKey)
    , _piiFileId      :: !Text
    , _piiOAuthToken  :: !(Maybe OAuthToken)
    , _piiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ParentsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piiQuotaUser'
--
-- * 'piiPrettyPrint'
--
-- * 'piiUserIP'
--
-- * 'piiPayload'
--
-- * 'piiKey'
--
-- * 'piiFileId'
--
-- * 'piiOAuthToken'
--
-- * 'piiFields'
parentsInsert'
    :: ParentReference -- ^ 'payload'
    -> Text -- ^ 'fileId'
    -> ParentsInsert'
parentsInsert' pPiiPayload_ pPiiFileId_ =
    ParentsInsert'
    { _piiQuotaUser = Nothing
    , _piiPrettyPrint = True
    , _piiUserIP = Nothing
    , _piiPayload = pPiiPayload_
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

-- | Multipart request metadata.
piiPayload :: Lens' ParentsInsert' ParentReference
piiPayload
  = lens _piiPayload (\ s a -> s{_piiPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
piiKey :: Lens' ParentsInsert' (Maybe AuthKey)
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
        _AuthKey = piiKey . _Just
        _AuthToken = piiOAuthToken . _Just

instance GoogleRequest ParentsInsert' where
        type Rs ParentsInsert' = ParentReference
        request = requestWith driveRequest
        requestWith rq ParentsInsert'{..}
          = go _piiFileId _piiQuotaUser (Just _piiPrettyPrint)
              _piiUserIP
              _piiFields
              _piiKey
              _piiOAuthToken
              (Just AltJSON)
              _piiPayload
          where go
                  = clientBuild (Proxy :: Proxy ParentsInsertResource)
                      rq
