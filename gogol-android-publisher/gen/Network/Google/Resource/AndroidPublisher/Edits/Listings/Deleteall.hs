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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Listings.Deleteall
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes all localized listings from an edit.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherEditsListingsDeleteall@.
module Network.Google.Resource.AndroidPublisher.Edits.Listings.Deleteall
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
    , ediUserIP
    , ediKey
    , ediOAuthToken
    , ediEditId
    , ediFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsListingsDeleteall@ method which the
-- 'EditsListingsDeleteall'' request conforms to.
type EditsListingsDeleteallResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "listings" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       Header "Authorization" OAuthToken :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes all localized listings from an edit.
--
-- /See:/ 'editsListingsDeleteall'' smart constructor.
data EditsListingsDeleteall' = EditsListingsDeleteall'
    { _ediQuotaUser   :: !(Maybe Text)
    , _ediPrettyPrint :: !Bool
    , _ediPackageName :: !Text
    , _ediUserIP      :: !(Maybe Text)
    , _ediKey         :: !(Maybe AuthKey)
    , _ediOAuthToken  :: !(Maybe OAuthToken)
    , _ediEditId      :: !Text
    , _ediFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'ediUserIP'
--
-- * 'ediKey'
--
-- * 'ediOAuthToken'
--
-- * 'ediEditId'
--
-- * 'ediFields'
editsListingsDeleteall'
    :: Text -- ^ 'packageName'
    -> Text -- ^ 'editId'
    -> EditsListingsDeleteall'
editsListingsDeleteall' pEdiPackageName_ pEdiEditId_ =
    EditsListingsDeleteall'
    { _ediQuotaUser = Nothing
    , _ediPrettyPrint = True
    , _ediPackageName = pEdiPackageName_
    , _ediUserIP = Nothing
    , _ediKey = Nothing
    , _ediOAuthToken = Nothing
    , _ediEditId = pEdiEditId_
    , _ediFields = Nothing
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
ediUserIP :: Lens' EditsListingsDeleteall' (Maybe Text)
ediUserIP
  = lens _ediUserIP (\ s a -> s{_ediUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ediKey :: Lens' EditsListingsDeleteall' (Maybe AuthKey)
ediKey = lens _ediKey (\ s a -> s{_ediKey = a})

-- | OAuth 2.0 token for the current user.
ediOAuthToken :: Lens' EditsListingsDeleteall' (Maybe OAuthToken)
ediOAuthToken
  = lens _ediOAuthToken
      (\ s a -> s{_ediOAuthToken = a})

-- | Unique identifier for this edit.
ediEditId :: Lens' EditsListingsDeleteall' Text
ediEditId
  = lens _ediEditId (\ s a -> s{_ediEditId = a})

-- | Selector specifying which fields to include in a partial response.
ediFields :: Lens' EditsListingsDeleteall' (Maybe Text)
ediFields
  = lens _ediFields (\ s a -> s{_ediFields = a})

instance GoogleAuth EditsListingsDeleteall' where
        _AuthKey = ediKey . _Just
        _AuthToken = ediOAuthToken . _Just

instance GoogleRequest EditsListingsDeleteall' where
        type Rs EditsListingsDeleteall' = ()
        request = requestWith androidPublisherRequest
        requestWith rq EditsListingsDeleteall'{..}
          = go _ediPackageName _ediEditId _ediQuotaUser
              (Just _ediPrettyPrint)
              _ediUserIP
              _ediFields
              _ediKey
              _ediOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy EditsListingsDeleteallResource)
                      rq
