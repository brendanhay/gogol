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
-- Module      : Network.Google.Resource.Drive.Parents.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Removes a parent from a file.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveParentsDelete@.
module Network.Google.Resource.Drive.Parents.Delete
    (
    -- * REST Resource
      ParentsDeleteResource

    -- * Creating a Request
    , parentsDelete'
    , ParentsDelete'

    -- * Request Lenses
    , pddQuotaUser
    , pddPrettyPrint
    , pddUserIp
    , pddKey
    , pddFileId
    , pddOauthToken
    , pddParentId
    , pddFields
    , pddAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveParentsDelete@ which the
-- 'ParentsDelete'' request conforms to.
type ParentsDeleteResource =
     "files" :>
       Capture "fileId" Text :>
         "parents" :>
           Capture "parentId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Removes a parent from a file.
--
-- /See:/ 'parentsDelete'' smart constructor.
data ParentsDelete' = ParentsDelete'
    { _pddQuotaUser   :: !(Maybe Text)
    , _pddPrettyPrint :: !Bool
    , _pddUserIp      :: !(Maybe Text)
    , _pddKey         :: !(Maybe Text)
    , _pddFileId      :: !Text
    , _pddOauthToken  :: !(Maybe Text)
    , _pddParentId    :: !Text
    , _pddFields      :: !(Maybe Text)
    , _pddAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ParentsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pddQuotaUser'
--
-- * 'pddPrettyPrint'
--
-- * 'pddUserIp'
--
-- * 'pddKey'
--
-- * 'pddFileId'
--
-- * 'pddOauthToken'
--
-- * 'pddParentId'
--
-- * 'pddFields'
--
-- * 'pddAlt'
parentsDelete'
    :: Text -- ^ 'fileId'
    -> Text -- ^ 'parentId'
    -> ParentsDelete'
parentsDelete' pPddFileId_ pPddParentId_ =
    ParentsDelete'
    { _pddQuotaUser = Nothing
    , _pddPrettyPrint = True
    , _pddUserIp = Nothing
    , _pddKey = Nothing
    , _pddFileId = pPddFileId_
    , _pddOauthToken = Nothing
    , _pddParentId = pPddParentId_
    , _pddFields = Nothing
    , _pddAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pddQuotaUser :: Lens' ParentsDelete' (Maybe Text)
pddQuotaUser
  = lens _pddQuotaUser (\ s a -> s{_pddQuotaUser = a})

-- | Returns response with indentations and line breaks.
pddPrettyPrint :: Lens' ParentsDelete' Bool
pddPrettyPrint
  = lens _pddPrettyPrint
      (\ s a -> s{_pddPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pddUserIp :: Lens' ParentsDelete' (Maybe Text)
pddUserIp
  = lens _pddUserIp (\ s a -> s{_pddUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pddKey :: Lens' ParentsDelete' (Maybe Text)
pddKey = lens _pddKey (\ s a -> s{_pddKey = a})

-- | The ID of the file.
pddFileId :: Lens' ParentsDelete' Text
pddFileId
  = lens _pddFileId (\ s a -> s{_pddFileId = a})

-- | OAuth 2.0 token for the current user.
pddOauthToken :: Lens' ParentsDelete' (Maybe Text)
pddOauthToken
  = lens _pddOauthToken
      (\ s a -> s{_pddOauthToken = a})

-- | The ID of the parent.
pddParentId :: Lens' ParentsDelete' Text
pddParentId
  = lens _pddParentId (\ s a -> s{_pddParentId = a})

-- | Selector specifying which fields to include in a partial response.
pddFields :: Lens' ParentsDelete' (Maybe Text)
pddFields
  = lens _pddFields (\ s a -> s{_pddFields = a})

-- | Data format for the response.
pddAlt :: Lens' ParentsDelete' Alt
pddAlt = lens _pddAlt (\ s a -> s{_pddAlt = a})

instance GoogleRequest ParentsDelete' where
        type Rs ParentsDelete' = ()
        request = requestWithRoute defReq driveURL
        requestWithRoute r u ParentsDelete'{..}
          = go _pddQuotaUser (Just _pddPrettyPrint) _pddUserIp
              _pddKey
              _pddFileId
              _pddOauthToken
              _pddParentId
              _pddFields
              (Just _pddAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ParentsDeleteResource)
                      r
                      u
