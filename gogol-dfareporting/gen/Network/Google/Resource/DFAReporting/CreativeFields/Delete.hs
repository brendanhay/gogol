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
-- Module      : Network.Google.Resource.DFAReporting.CreativeFields.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes an existing creative field.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingCreativeFieldsDelete@.
module Network.Google.Resource.DFAReporting.CreativeFields.Delete
    (
    -- * REST Resource
      CreativeFieldsDeleteResource

    -- * Creating a Request
    , creativeFieldsDelete'
    , CreativeFieldsDelete'

    -- * Request Lenses
    , cfdQuotaUser
    , cfdPrettyPrint
    , cfdUserIP
    , cfdProFileId
    , cfdKey
    , cfdId
    , cfdOAuthToken
    , cfdFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCreativeFieldsDelete@ method which the
-- 'CreativeFieldsDelete'' request conforms to.
type CreativeFieldsDeleteResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "creativeFields" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an existing creative field.
--
-- /See:/ 'creativeFieldsDelete'' smart constructor.
data CreativeFieldsDelete' = CreativeFieldsDelete'
    { _cfdQuotaUser   :: !(Maybe Text)
    , _cfdPrettyPrint :: !Bool
    , _cfdUserIP      :: !(Maybe Text)
    , _cfdProFileId   :: !Int64
    , _cfdKey         :: !(Maybe AuthKey)
    , _cfdId          :: !Int64
    , _cfdOAuthToken  :: !(Maybe OAuthToken)
    , _cfdFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeFieldsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfdQuotaUser'
--
-- * 'cfdPrettyPrint'
--
-- * 'cfdUserIP'
--
-- * 'cfdProFileId'
--
-- * 'cfdKey'
--
-- * 'cfdId'
--
-- * 'cfdOAuthToken'
--
-- * 'cfdFields'
creativeFieldsDelete'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> CreativeFieldsDelete'
creativeFieldsDelete' pCfdProFileId_ pCfdId_ =
    CreativeFieldsDelete'
    { _cfdQuotaUser = Nothing
    , _cfdPrettyPrint = True
    , _cfdUserIP = Nothing
    , _cfdProFileId = pCfdProFileId_
    , _cfdKey = Nothing
    , _cfdId = pCfdId_
    , _cfdOAuthToken = Nothing
    , _cfdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cfdQuotaUser :: Lens' CreativeFieldsDelete' (Maybe Text)
cfdQuotaUser
  = lens _cfdQuotaUser (\ s a -> s{_cfdQuotaUser = a})

-- | Returns response with indentations and line breaks.
cfdPrettyPrint :: Lens' CreativeFieldsDelete' Bool
cfdPrettyPrint
  = lens _cfdPrettyPrint
      (\ s a -> s{_cfdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cfdUserIP :: Lens' CreativeFieldsDelete' (Maybe Text)
cfdUserIP
  = lens _cfdUserIP (\ s a -> s{_cfdUserIP = a})

-- | User profile ID associated with this request.
cfdProFileId :: Lens' CreativeFieldsDelete' Int64
cfdProFileId
  = lens _cfdProFileId (\ s a -> s{_cfdProFileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cfdKey :: Lens' CreativeFieldsDelete' (Maybe AuthKey)
cfdKey = lens _cfdKey (\ s a -> s{_cfdKey = a})

-- | Creative Field ID
cfdId :: Lens' CreativeFieldsDelete' Int64
cfdId = lens _cfdId (\ s a -> s{_cfdId = a})

-- | OAuth 2.0 token for the current user.
cfdOAuthToken :: Lens' CreativeFieldsDelete' (Maybe OAuthToken)
cfdOAuthToken
  = lens _cfdOAuthToken
      (\ s a -> s{_cfdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cfdFields :: Lens' CreativeFieldsDelete' (Maybe Text)
cfdFields
  = lens _cfdFields (\ s a -> s{_cfdFields = a})

instance GoogleAuth CreativeFieldsDelete' where
        _AuthKey = cfdKey . _Just
        _AuthToken = cfdOAuthToken . _Just

instance GoogleRequest CreativeFieldsDelete' where
        type Rs CreativeFieldsDelete' = ()
        request = requestWith dFAReportingRequest
        requestWith rq CreativeFieldsDelete'{..}
          = go _cfdProFileId _cfdId _cfdQuotaUser
              (Just _cfdPrettyPrint)
              _cfdUserIP
              _cfdFields
              _cfdKey
              _cfdOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy CreativeFieldsDeleteResource)
                      rq
