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
-- Module      : Network.Google.Resource.Drive.Children.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a specific child reference.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveChildrenGet@.
module Network.Google.Resource.Drive.Children.Get
    (
    -- * REST Resource
      ChildrenGetResource

    -- * Creating a Request
    , childrenGet'
    , ChildrenGet'

    -- * Request Lenses
    , cggQuotaUser
    , cggPrettyPrint
    , cggUserIP
    , cggFolderId
    , cggKey
    , cggChildId
    , cggOAuthToken
    , cggFields
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveChildrenGet@ method which the
-- 'ChildrenGet'' request conforms to.
type ChildrenGetResource =
     "files" :>
       Capture "folderId" Text :>
         "children" :>
           Capture "childId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       Header "Authorization" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ChildReference

-- | Gets a specific child reference.
--
-- /See:/ 'childrenGet'' smart constructor.
data ChildrenGet' = ChildrenGet'
    { _cggQuotaUser   :: !(Maybe Text)
    , _cggPrettyPrint :: !Bool
    , _cggUserIP      :: !(Maybe Text)
    , _cggFolderId    :: !Text
    , _cggKey         :: !(Maybe AuthKey)
    , _cggChildId     :: !Text
    , _cggOAuthToken  :: !(Maybe OAuthToken)
    , _cggFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChildrenGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cggQuotaUser'
--
-- * 'cggPrettyPrint'
--
-- * 'cggUserIP'
--
-- * 'cggFolderId'
--
-- * 'cggKey'
--
-- * 'cggChildId'
--
-- * 'cggOAuthToken'
--
-- * 'cggFields'
childrenGet'
    :: Text -- ^ 'folderId'
    -> Text -- ^ 'childId'
    -> ChildrenGet'
childrenGet' pCggFolderId_ pCggChildId_ =
    ChildrenGet'
    { _cggQuotaUser = Nothing
    , _cggPrettyPrint = True
    , _cggUserIP = Nothing
    , _cggFolderId = pCggFolderId_
    , _cggKey = Nothing
    , _cggChildId = pCggChildId_
    , _cggOAuthToken = Nothing
    , _cggFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cggQuotaUser :: Lens' ChildrenGet' (Maybe Text)
cggQuotaUser
  = lens _cggQuotaUser (\ s a -> s{_cggQuotaUser = a})

-- | Returns response with indentations and line breaks.
cggPrettyPrint :: Lens' ChildrenGet' Bool
cggPrettyPrint
  = lens _cggPrettyPrint
      (\ s a -> s{_cggPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cggUserIP :: Lens' ChildrenGet' (Maybe Text)
cggUserIP
  = lens _cggUserIP (\ s a -> s{_cggUserIP = a})

-- | The ID of the folder.
cggFolderId :: Lens' ChildrenGet' Text
cggFolderId
  = lens _cggFolderId (\ s a -> s{_cggFolderId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cggKey :: Lens' ChildrenGet' (Maybe AuthKey)
cggKey = lens _cggKey (\ s a -> s{_cggKey = a})

-- | The ID of the child.
cggChildId :: Lens' ChildrenGet' Text
cggChildId
  = lens _cggChildId (\ s a -> s{_cggChildId = a})

-- | OAuth 2.0 token for the current user.
cggOAuthToken :: Lens' ChildrenGet' (Maybe OAuthToken)
cggOAuthToken
  = lens _cggOAuthToken
      (\ s a -> s{_cggOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cggFields :: Lens' ChildrenGet' (Maybe Text)
cggFields
  = lens _cggFields (\ s a -> s{_cggFields = a})

instance GoogleAuth ChildrenGet' where
        _AuthKey = cggKey . _Just
        _AuthToken = cggOAuthToken . _Just

instance GoogleRequest ChildrenGet' where
        type Rs ChildrenGet' = ChildReference
        request = requestWith driveRequest
        requestWith rq ChildrenGet'{..}
          = go _cggFolderId _cggChildId _cggQuotaUser
              (Just _cggPrettyPrint)
              _cggUserIP
              _cggFields
              _cggKey
              _cggOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy ChildrenGetResource) rq
