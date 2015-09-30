{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Drive.Parents.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a specific parent reference.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveParentsGet@.
module Drive.Parents.Get
    (
    -- * REST Resource
      ParentsGetAPI

    -- * Creating a Request
    , parentsGet
    , ParentsGet

    -- * Request Lenses
    , pgQuotaUser
    , pgPrettyPrint
    , pgUserIp
    , pgKey
    , pgFileId
    , pgOauthToken
    , pgParentId
    , pgFields
    , pgAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveParentsGet@ which the
-- 'ParentsGet' request conforms to.
type ParentsGetAPI =
     "files" :>
       Capture "fileId" Text :>
         "parents" :>
           Capture "parentId" Text :>
             Get '[JSON] ParentReference

-- | Gets a specific parent reference.
--
-- /See:/ 'parentsGet' smart constructor.
data ParentsGet = ParentsGet
    { _pgQuotaUser   :: !(Maybe Text)
    , _pgPrettyPrint :: !Bool
    , _pgUserIp      :: !(Maybe Text)
    , _pgKey         :: !(Maybe Text)
    , _pgFileId      :: !Text
    , _pgOauthToken  :: !(Maybe Text)
    , _pgParentId    :: !Text
    , _pgFields      :: !(Maybe Text)
    , _pgAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ParentsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgQuotaUser'
--
-- * 'pgPrettyPrint'
--
-- * 'pgUserIp'
--
-- * 'pgKey'
--
-- * 'pgFileId'
--
-- * 'pgOauthToken'
--
-- * 'pgParentId'
--
-- * 'pgFields'
--
-- * 'pgAlt'
parentsGet
    :: Text -- ^ 'fileId'
    -> Text -- ^ 'parentId'
    -> ParentsGet
parentsGet pPgFileId_ pPgParentId_ =
    ParentsGet
    { _pgQuotaUser = Nothing
    , _pgPrettyPrint = True
    , _pgUserIp = Nothing
    , _pgKey = Nothing
    , _pgFileId = pPgFileId_
    , _pgOauthToken = Nothing
    , _pgParentId = pPgParentId_
    , _pgFields = Nothing
    , _pgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pgQuotaUser :: Lens' ParentsGet' (Maybe Text)
pgQuotaUser
  = lens _pgQuotaUser (\ s a -> s{_pgQuotaUser = a})

-- | Returns response with indentations and line breaks.
pgPrettyPrint :: Lens' ParentsGet' Bool
pgPrettyPrint
  = lens _pgPrettyPrint
      (\ s a -> s{_pgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pgUserIp :: Lens' ParentsGet' (Maybe Text)
pgUserIp = lens _pgUserIp (\ s a -> s{_pgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pgKey :: Lens' ParentsGet' (Maybe Text)
pgKey = lens _pgKey (\ s a -> s{_pgKey = a})

-- | The ID of the file.
pgFileId :: Lens' ParentsGet' Text
pgFileId = lens _pgFileId (\ s a -> s{_pgFileId = a})

-- | OAuth 2.0 token for the current user.
pgOauthToken :: Lens' ParentsGet' (Maybe Text)
pgOauthToken
  = lens _pgOauthToken (\ s a -> s{_pgOauthToken = a})

-- | The ID of the parent.
pgParentId :: Lens' ParentsGet' Text
pgParentId
  = lens _pgParentId (\ s a -> s{_pgParentId = a})

-- | Selector specifying which fields to include in a partial response.
pgFields :: Lens' ParentsGet' (Maybe Text)
pgFields = lens _pgFields (\ s a -> s{_pgFields = a})

-- | Data format for the response.
pgAlt :: Lens' ParentsGet' Text
pgAlt = lens _pgAlt (\ s a -> s{_pgAlt = a})

instance GoogleRequest ParentsGet' where
        type Rs ParentsGet' = ParentReference
        request = requestWithRoute defReq driveURL
        requestWithRoute r u ParentsGet{..}
          = go _pgQuotaUser _pgPrettyPrint _pgUserIp _pgKey
              _pgFileId
              _pgOauthToken
              _pgParentId
              _pgFields
              _pgAlt
          where go
                  = clientWithRoute (Proxy :: Proxy ParentsGetAPI) r u
