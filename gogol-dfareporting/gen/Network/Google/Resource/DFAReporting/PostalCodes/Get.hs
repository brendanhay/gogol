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
-- Module      : Network.Google.Resource.DFAReporting.PostalCodes.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one postal code by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingPostalCodesGet@.
module Network.Google.Resource.DFAReporting.PostalCodes.Get
    (
    -- * REST Resource
      PostalCodesGetResource

    -- * Creating a Request
    , postalCodesGet'
    , PostalCodesGet'

    -- * Request Lenses
    , pcgProFileId
    , pcgCode
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingPostalCodesGet@ method which the
-- 'PostalCodesGet'' request conforms to.
type PostalCodesGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "postalCodes" :>
           Capture "code" Text :>
             QueryParam "alt" AltJSON :> Get '[JSON] PostalCode

-- | Gets one postal code by ID.
--
-- /See:/ 'postalCodesGet'' smart constructor.
data PostalCodesGet' = PostalCodesGet'
    { _pcgProFileId :: !Int64
    , _pcgCode      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostalCodesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcgProFileId'
--
-- * 'pcgCode'
postalCodesGet'
    :: Int64 -- ^ 'profileId'
    -> Text -- ^ 'code'
    -> PostalCodesGet'
postalCodesGet' pPcgProFileId_ pPcgCode_ =
    PostalCodesGet'
    { _pcgProFileId = pPcgProFileId_
    , _pcgCode = pPcgCode_
    }

-- | User profile ID associated with this request.
pcgProFileId :: Lens' PostalCodesGet' Int64
pcgProFileId
  = lens _pcgProFileId (\ s a -> s{_pcgProFileId = a})

-- | Postal code ID.
pcgCode :: Lens' PostalCodesGet' Text
pcgCode = lens _pcgCode (\ s a -> s{_pcgCode = a})

instance GoogleRequest PostalCodesGet' where
        type Rs PostalCodesGet' = PostalCode
        requestClient PostalCodesGet'{..}
          = go _pcgProFileId _pcgCode (Just AltJSON)
              dFAReporting
          where go
                  = buildClient (Proxy :: Proxy PostalCodesGetResource)
                      mempty
