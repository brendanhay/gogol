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
    , pddUserIP
    , pddKey
    , pddFileId
    , pddOAuthToken
    , pddParentId
    , pddFields
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
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Removes a parent from a file.
--
-- /See:/ 'parentsDelete'' smart constructor.
data ParentsDelete' = ParentsDelete'
    { _pddQuotaUser   :: !(Maybe Text)
    , _pddPrettyPrint :: !Bool
    , _pddUserIP      :: !(Maybe Text)
    , _pddKey         :: !(Maybe Key)
    , _pddFileId      :: !Text
    , _pddOAuthToken  :: !(Maybe OAuthToken)
    , _pddParentId    :: !Text
    , _pddFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ParentsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pddQuotaUser'
--
-- * 'pddPrettyPrint'
--
-- * 'pddUserIP'
--
-- * 'pddKey'
--
-- * 'pddFileId'
--
-- * 'pddOAuthToken'
--
-- * 'pddParentId'
--
-- * 'pddFields'
parentsDelete'
    :: Text -- ^ 'fileId'
    -> Text -- ^ 'parentId'
    -> ParentsDelete'
parentsDelete' pPddFileId_ pPddParentId_ =
    ParentsDelete'
    { _pddQuotaUser = Nothing
    , _pddPrettyPrint = True
    , _pddUserIP = Nothing
    , _pddKey = Nothing
    , _pddFileId = pPddFileId_
    , _pddOAuthToken = Nothing
    , _pddParentId = pPddParentId_
    , _pddFields = Nothing
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
pddUserIP :: Lens' ParentsDelete' (Maybe Text)
pddUserIP
  = lens _pddUserIP (\ s a -> s{_pddUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pddKey :: Lens' ParentsDelete' (Maybe Key)
pddKey = lens _pddKey (\ s a -> s{_pddKey = a})

-- | The ID of the file.
pddFileId :: Lens' ParentsDelete' Text
pddFileId
  = lens _pddFileId (\ s a -> s{_pddFileId = a})

-- | OAuth 2.0 token for the current user.
pddOAuthToken :: Lens' ParentsDelete' (Maybe OAuthToken)
pddOAuthToken
  = lens _pddOAuthToken
      (\ s a -> s{_pddOAuthToken = a})

-- | The ID of the parent.
pddParentId :: Lens' ParentsDelete' Text
pddParentId
  = lens _pddParentId (\ s a -> s{_pddParentId = a})

-- | Selector specifying which fields to include in a partial response.
pddFields :: Lens' ParentsDelete' (Maybe Text)
pddFields
  = lens _pddFields (\ s a -> s{_pddFields = a})

instance GoogleAuth ParentsDelete' where
        authKey = pddKey . _Just
        authToken = pddOAuthToken . _Just

instance GoogleRequest ParentsDelete' where
        type Rs ParentsDelete' = ()
        request = requestWithRoute defReq driveURL
        requestWithRoute r u ParentsDelete'{..}
          = go _pddFileId _pddParentId _pddQuotaUser
              (Just _pddPrettyPrint)
              _pddUserIP
              _pddFields
              _pddKey
              _pddOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ParentsDeleteResource)
                      r
                      u
