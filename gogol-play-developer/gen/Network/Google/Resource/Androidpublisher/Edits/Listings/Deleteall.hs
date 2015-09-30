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
-- Module      : Network.Google.Resource.Androidpublisher.Edits.Listings.Deleteall
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes all localized listings from an edit.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidpublisherEditsListingsDeleteall@.
module Network.Google.Resource.Androidpublisher.Edits.Listings.Deleteall
    (
    -- * REST Resource
      EditsListingsDeleteallResource

    -- * Creating a Request
    , editsListingsDeleteall'
    , EditsListingsDeleteall'

    -- * Request Lenses
    , ediQuotaUser
    , ediPrettyPrint
    , ediPackageName
    , ediUserIp
    , ediKey
    , ediOauthToken
    , ediEditId
    , ediFields
    , ediAlt
    ) where

import           Network.Google.PlayDeveloper.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidpublisherEditsListingsDeleteall@ which the
-- 'EditsListingsDeleteall'' request conforms to.
type EditsListingsDeleteallResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "listings" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes all localized listings from an edit.
--
-- /See:/ 'editsListingsDeleteall'' smart constructor.
data EditsListingsDeleteall' = EditsListingsDeleteall'
    { _ediQuotaUser   :: !(Maybe Text)
    , _ediPrettyPrint :: !Bool
    , _ediPackageName :: !Text
    , _ediUserIp      :: !(Maybe Text)
    , _ediKey         :: !(Maybe Text)
    , _ediOauthToken  :: !(Maybe Text)
    , _ediEditId      :: !Text
    , _ediFields      :: !(Maybe Text)
    , _ediAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsListingsDeleteall'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ediQuotaUser'
--
-- * 'ediPrettyPrint'
--
-- * 'ediPackageName'
--
-- * 'ediUserIp'
--
-- * 'ediKey'
--
-- * 'ediOauthToken'
--
-- * 'ediEditId'
--
-- * 'ediFields'
--
-- * 'ediAlt'
editsListingsDeleteall'
    :: Text -- ^ 'packageName'
    -> Text -- ^ 'editId'
    -> EditsListingsDeleteall'
editsListingsDeleteall' pEdiPackageName_ pEdiEditId_ =
    EditsListingsDeleteall'
    { _ediQuotaUser = Nothing
    , _ediPrettyPrint = True
    , _ediPackageName = pEdiPackageName_
    , _ediUserIp = Nothing
    , _ediKey = Nothing
    , _ediOauthToken = Nothing
    , _ediEditId = pEdiEditId_
    , _ediFields = Nothing
    , _ediAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ediQuotaUser :: Lens' EditsListingsDeleteall' (Maybe Text)
ediQuotaUser
  = lens _ediQuotaUser (\ s a -> s{_ediQuotaUser = a})

-- | Returns response with indentations and line breaks.
ediPrettyPrint :: Lens' EditsListingsDeleteall' Bool
ediPrettyPrint
  = lens _ediPrettyPrint
      (\ s a -> s{_ediPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
ediPackageName :: Lens' EditsListingsDeleteall' Text
ediPackageName
  = lens _ediPackageName
      (\ s a -> s{_ediPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ediUserIp :: Lens' EditsListingsDeleteall' (Maybe Text)
ediUserIp
  = lens _ediUserIp (\ s a -> s{_ediUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ediKey :: Lens' EditsListingsDeleteall' (Maybe Text)
ediKey = lens _ediKey (\ s a -> s{_ediKey = a})

-- | OAuth 2.0 token for the current user.
ediOauthToken :: Lens' EditsListingsDeleteall' (Maybe Text)
ediOauthToken
  = lens _ediOauthToken
      (\ s a -> s{_ediOauthToken = a})

-- | Unique identifier for this edit.
ediEditId :: Lens' EditsListingsDeleteall' Text
ediEditId
  = lens _ediEditId (\ s a -> s{_ediEditId = a})

-- | Selector specifying which fields to include in a partial response.
ediFields :: Lens' EditsListingsDeleteall' (Maybe Text)
ediFields
  = lens _ediFields (\ s a -> s{_ediFields = a})

-- | Data format for the response.
ediAlt :: Lens' EditsListingsDeleteall' Alt
ediAlt = lens _ediAlt (\ s a -> s{_ediAlt = a})

instance GoogleRequest EditsListingsDeleteall' where
        type Rs EditsListingsDeleteall' = ()
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u EditsListingsDeleteall'{..}
          = go _ediQuotaUser (Just _ediPrettyPrint)
              _ediPackageName
              _ediUserIp
              _ediKey
              _ediOauthToken
              _ediEditId
              _ediFields
              (Just _ediAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsListingsDeleteallResource)
                      r
                      u
